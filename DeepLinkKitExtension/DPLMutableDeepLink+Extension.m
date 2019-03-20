//
//  DPLMutableDeepLink+Extension.m
//  DeepLinkKitExtension
//
//  Created by retriable on 2019/3/21.
//  Copyright © 2018年 retriable. All rights reserved.
//

#import <JRSwizzle/JRSwizzle.h>
#import <objc/runtime.h>

#import "DPLMutableDeepLink+Extension.h"

@implementation DPLMutableDeepLink (Extension)

- (NSMutableDictionary*)additionalParameters{
    NSMutableDictionary *v=objc_getAssociatedObject(self, @selector(additionalParameters));
    if (!v){
        v=[NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, @selector(additionalParameters), v, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return v;
}

- (id)__objectForKeyedSubscript:(NSString *)key {
    id value  = [self __objectForKeyedSubscript:key];
    if (!value) {
        value = self.additionalParameters[key];
    }
    return value;
}

- (NSString *)__description {
    return [NSString stringWithFormat:
            @"\n<%@ %p\n"
            @"\t URL: \"%@\"\n"
            @"\t queryParameters: \"%@\"\n"
            @"\t routeParameters: \"%@\"\n"
            @"\t additionalParameters: \"%@\"\n"
            @"\t callbackURL: \"%@\"\n"
            @">",
            NSStringFromClass([self class]),
            self,
            [self.URL description],
            self.queryParameters,
            self.routeParameters,
            self.additionalParameters,
            [self.callbackURL description]];
}

+ (void)load{
    NSParameterAssert([self jr_swizzleMethod:@selector(objectForKeyedSubscript:) withMethod:@selector(__objectForKeyedSubscript:) error:nil]);
    NSParameterAssert([self jr_swizzleMethod:@selector(description) withMethod:@selector(__description) error:nil]);
}

@end
