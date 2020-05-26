//
//  SFUserViewModel.h
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/26.
//

#import <Foundation/Foundation.h>
#import "SFUserInfoViewController.h"
#import "SFUserInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFUserViewModel : NSObject
@property (nonatomic, weak)SFUserInfoViewController *vc;

-(void)initWtihVC:(SFUserInfoViewController *)vc;
//改变用户名称
-(void)changeUserName;
//获取用户信息
-(SFUserInfo *)getUserInfo;
@end

NS_ASSUME_NONNULL_END
