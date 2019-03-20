//
//  ViewController.m
//  DeepLinkKitExtension tvOS Example
//
//  Created by retriable on 2019/3/21.
//  Copyright © 2019 retriable. All rights reserved.
//

@import DeepLinkKitExtension;

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong)DPLDeepLinkRouter *router;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.router=[[DPLDeepLinkRouter alloc]init];
    self.router[@"https://*.google.com/root"]=^(DPLDeepLink* link){
        
    };
    
    [self.router handleURL:[NSURL URLWithString:@"https://www.google.com/root"] parameters:nil withCompletion:^(BOOL handled, NSError *error) {
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
