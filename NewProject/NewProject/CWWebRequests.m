//
//  CWWebRequests.m
//  NewProject
//
//  Created by Christopher Webb-Orenstein on 6/28/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "CWWebRequests.h"

@implementation CWWebRequests

-(instancetype)init {
    return [self initWithURL:@""];
}


-(instancetype)initWithURL:(NSString*)url {
    self = [super init];
    
    if (self) {
        _url = [NSURL URLWithString:url];
        
    }
    
    return self;
}


//- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
//    didReceiveData:(NSData *)data
//{
//    self.serverResponse = data;
//}

-(void) sendHTTPGet
{
    NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultConfigObject delegate:(id)self delegateQueue: [NSOperationQueue mainQueue]];
    
    NSURL * url = [NSURL URLWithString:@"http://news.google.com"];
    
    NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithURL:url
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        if(error == nil)
        {
            NSString * text = [[NSString alloc] initWithData:data
                                                    encoding:NSUTF8StringEncoding];
            self.webResponse = text;
            NSLog(@"%@", self.webResponse);
            
        }
    }];
    
    [dataTask resume];
}

-(NSString *)returnDataFromRequest {
    return self.webResponse;
}



@end
