//
//  CWWebSearch.m
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "CWWebSearch.h"


@implementation CWWebSearch


-(NSString *)getWebPage {
    CWWebRequests *newRequest = [[CWWebRequests alloc]init];
    [newRequest sendHTTPGet];
    self.webPage = newRequest.returnDataFromRequest;
    return self.webPage;
}


-(NSMutableArray *)getURLSFromPage {
    DataCleaner *newFiltration = [[DataCleaner alloc]init];
    self.urls = [[newFiltration returnFormattedDataFromStringOfData:self.webPage]copy];
    return [self.urls mutableCopy];
}

@end
