//
//  DPLDeepLinkRouter+Extension.h
//  DeepLinkKitExtension
//
//  Created by retriable on 2019/3/21.
//  Copyright © 2018年 retriable. All rights reserved.
//

#import <DeepLinkKit/DeepLinkKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPLDeepLinkRouter (Extension)

- (BOOL)canHandleURL:(NSURL * _Nullable)url NS_SWIFT_NAME(canHandle(url:));

- (BOOL)handleURL:(NSURL * _Nullable)url parameters:(NSDictionary* _Nullable)parameters NS_SWIFT_NAME(handle(url:parameters:));

- (BOOL)handleURL:(NSURL * _Nullable)url parameters:(NSDictionary* _Nullable)parameters withCompletion:(DPLRouteCompletionBlock _Nullable)completionHandler NS_SWIFT_NAME(handle(url:parameters:completionHandler:));

@end

NS_ASSUME_NONNULL_END
