//
//  UserMoudleRouter.m
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/14.
//

#import "UserMoudleRouter.h"
#import "SFUserInfoViewController.h"
#import <SFCommonKit/MGJRouter.h>
//@import SFCommonKit;
@implementation UserMoudleRouter
+(void)load{
    [MGJRouter registerURLPattern:@"sf_user://SFUserInfoViewController" toHandler:^(NSDictionary *routerParameters) {
          UINavigationController *nav = [routerParameters[MGJRouterParameterUserInfo] objectForKey:@"nav"];
          [nav pushViewController:[[SFUserInfoViewController alloc] initWithNibName:@"SFUserInfoViewController" bundle:[NSBundle bundleForClass:NSClassFromString(@"SFUserInfoViewController")]] animated:YES];
      }];
      NSLog(@"");
}
@end
