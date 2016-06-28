//
//  CWWebSearch.h
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWWebSearch.h"
#import "CWWebRequests.h"
#import "DataCleaner.h"

@interface CWWebSearch : NSObject
@property (strong, nonatomic) NSString *webPage;
@property (strong, nonatomic) NSMutableArray *urls;


-(NSString*)getWebPage;
-(NSMutableArray*)getURLSFromPage;

@end
