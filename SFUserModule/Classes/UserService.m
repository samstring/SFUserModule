//
//  UserService.m
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/25.
//

#import "UserService.h"
#import "SFUserInfoViewController.h"

@implementation UserService

+(void)gotoUserInfoWithController:(UIViewController *)vc withBLock:(UserModule_UserBLock)block{
    SFUserInfoViewController *userVC = [[SFUserInfoViewController alloc] initWithNibName:@"SFUserInfoViewController" bundle:[NSBundle bundleForClass:NSClassFromString(@"SFUserInfoViewController")]];
    id temp = nil;
    if(block)
    {
        temp = block;
    }
//    id b =  block;
    userVC.userBLock = (UserModule_UserBLock)temp;
    [vc.navigationController pushViewController:userVC animated:YES];
}
@end
