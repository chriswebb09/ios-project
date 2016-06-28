//
//  DataCleaner.h
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataCleaner : NSObject

@property (strong, nonatomic)NSString *regexPattern;
@property (strong, nonatomic)NSMutableArray *filteredContent;


-(instancetype)init;
-(instancetype)initWithRegexPattern:(NSString*)regexPattern;
-(NSArray *)returnFormattedDataFromStringOfData:(NSString *)data;
  
@end
