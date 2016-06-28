//
//  CWWebRequests.h
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWWebRequests : NSObject

@property (strong, nonatomic) NSString *webResponse;
@property (strong, nonatomic) NSURL *url;

//- (NSURLSessionDataTask *)getContentFromURL:(NSURL *)url;

//- (NSURLSessionDataTask *)getContentFromURL:(NSURL *)url completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;


-(instancetype)init;

-(instancetype)initWithURL:(NSURL *)url;

-(void)sendHTTPGet;


-(NSString *)returnDataFromRequest;

@end
