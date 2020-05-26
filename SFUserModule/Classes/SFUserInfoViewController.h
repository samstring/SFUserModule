//
//  SFUserInfoViewController.h
//  SFUserModule_Example
//
//  Created by 邓尚福 on 2020/5/14.
//  Copyright © 2020 samstring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFUserModule.h"
NS_ASSUME_NONNULL_BEGIN

@interface SFUserInfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (nonatomic, copy)UserModule_UserBLock userBLock;
@end

NS_ASSUME_NONNULL_END
