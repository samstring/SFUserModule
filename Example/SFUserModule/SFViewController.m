//
//  SFViewController.m
//  SFUserModule
//
//  Created by samstring on 05/14/2020.
//  Copyright (c) 2020 samstring. All rights reserved.
//

#import "SFViewController.h"
#import "SFExampleUserInfo.h"
#import <MGJRouter.h>
typedef void(^UserModuleExample_UserBLock)(SFExampleUserInfo *userInfo);
@interface SFViewController ()

@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickJumpVC:(id)sender {
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    [userInfo setObject:self forKey:@"vc"];
    
    UserModuleExample_UserBLock block = ^(SFExampleUserInfo *userInfo){
        NSLog(@"demo获取用户名-%@",userInfo.userName);
    };
    [userInfo  setObject:block forKey:@"block"];
    
    [MGJRouter openURL:@"sf_user://SFUserInfoViewController" withUserInfo:userInfo completion:^(id result) {
        
    }];
}

@end
