//
//  DataCleaner.m
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "DataCleaner.h"

@implementation DataCleaner

-(instancetype)init
{
    return [self initWithRegexPattern:@"http?://([-\\w\\.]+)+(:\\d+)?(/([\\w/_\\.]*(\\?\\S+)?)?)?"];
}

-(instancetype)initWithRegexPattern:(NSString*)regexPattern
{
    self = [super init];
    if (self) {
        _regexPattern = regexPattern;
        _filteredContent = [[NSMutableArray alloc]init];
    }
    return self;
    
}

-(NSArray *)returnFormattedDataFromStringOfData:(NSString *)data
{
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:_regexPattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSArray *arrayOfAllMatches = [regex matchesInString:data options:0 range:NSMakeRange(0, [data length])];
    
    for (NSTextCheckingResult *match in arrayOfAllMatches) {
        NSString *substringForMatch = [data substringWithRange:match.range];
        [self.filteredContent addObject:substringForMatch];
    }
    return [NSArray arrayWithArray:self.filteredContent];
}

@end
