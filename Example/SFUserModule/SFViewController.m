//
//  SFViewController.m
//  SFUserModule
//
//  Created by samstring on 05/14/2020.
//  Copyright (c) 2020 samstring. All rights reserved.
//

#import "SFViewController.h"
#import <MGJRouter.h>
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
    [userInfo setObject:self.navigationController forKey:@"nav"];
    [MGJRouter openURL:@"sf_user://SFUserInfoViewController" withUserInfo:userInfo completion:^(id result) {
        
    }];
}

@end
