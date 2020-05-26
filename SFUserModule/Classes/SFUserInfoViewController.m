//
//  SFUserInfoViewController.m
//  SFUserModule_Example
//
//  Created by 邓尚福 on 2020/5/14.
//  Copyright © 2020 samstring. All rights reserved.
//

#import "SFUserInfoViewController.h"
#import "SFUserInfo.h"
#import "SFUserViewModel.h"
//#import <MGJRouter.h>

@interface SFUserInfoViewController ()

@property (nonatomic, strong) SFUserViewModel *viewModel;
@end

@implementation SFUserInfoViewController


-(void)viewDidLoad{
    NSLog(@"加载SFUserInfoViewController");
    self.view.backgroundColor = [UIColor whiteColor];
    self.viewModel = [SFUserViewModel new];
    [self.viewModel initWtihVC:self];
}

- (IBAction)changeUserName:(id)sender {
    [self.viewModel changeUserName];
}


- (IBAction)back:(id)sender {
    SFUserInfo *userInfo = [SFUserInfo new];
    userInfo.userName = [self.viewModel getUserInfo].userName;
    if (self.userBLock) {
        self.userBLock(userInfo);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
