//
//  UserMoudleRouter.m
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/14.
//

#import "UserMoudleRouter.h"
#import "SFUserInfoViewController.h"
#import <SFCommonKit/MGJRouter.h>
#import "UserService.h"

//@import SFCommonKit;
@implementation UserMoudleRouter
+(void)load{
    
    [MGJRouter registerURLPattern:@"sf_user://SFUserInfoViewController" toHandler:^(NSDictionary *routerParameters) {
        NSDictionary *userInfo = [routerParameters objectForKey:MGJRouterParameterUserInfo];
        [UserService gotoUserInfoWithController:[userInfo objectForKey:@"vc"] withBLock:[userInfo objectForKey:@"block"]];
      }];
    
    NSLog(@"");
}
@end
