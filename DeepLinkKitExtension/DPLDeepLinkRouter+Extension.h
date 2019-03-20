//
//  DPLDeepLinkRouter+Extension.h
//  DeepLinkKitExtension
//
//  Created by retriable on 2019/3/21.
//  Copyright © 2018年 retriable. All rights reserved.
//

#import <DeepLinkKit/DeepLinkKit.h>

@interface DPLDeepLinkRouter (Extension)

- (BOOL)canHandleURL:(NSURL*)url;

- (BOOL)handleURL:(NSURL *)url parameters:(NSDictionary*)parameters;

- (BOOL)handleURL:(NSURL *)url parameters:(NSDictionary*)parameters withCompletion:(DPLRouteCompletionBlock)completionHandler;

@end
