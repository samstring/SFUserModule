//
//  UserService.h
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/25.
//

#import <Foundation/Foundation.h>
#import "SFUserModule.h"
NS_ASSUME_NONNULL_BEGIN



@interface UserService : NSObject
+(void)gotoUserInfoWithController:(UIViewController *)vc withBLock:(UserModule_UserBLock) block;
@end

NS_ASSUME_NONNULL_END
