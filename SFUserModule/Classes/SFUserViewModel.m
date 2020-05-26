//
//  SFUserViewModel.m
//  AFNetworking
//
//  Created by 邓尚福 on 2020/5/26.
//

#import "SFUserViewModel.h"
#import <KVOController/KVOController.h>
@interface SFUserViewModel ()

@property (nonatomic, strong) SFUserInfo *userInfo;
@property (nonatomic, strong) FBKVOController *kvoController;
@end

@implementation SFUserViewModel

-(void)initWtihVC:(SFUserInfoViewController *)vc{
    self.vc = vc;
    self.userInfo = [SFUserInfo new];
    self.kvoController = [FBKVOController controllerWithObserver:self];
    [self.kvoController observe:self keyPath:@"userInfo.userName" options:(NSKeyValueObservingOptionNew) block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        self.vc.nameLabel.text = [change objectForKey:@"new"];
    }];
    [self getDataFromnet];
}

-(void)getDataFromnet{
    //模拟从网络获取用户信息
    
    self.userInfo.userName = [NSString stringWithFormat:@"用户名：%@",@"张三"];
    self.userInfo.age = 10;
}

-(void)changeUserName{
    self.userInfo.userName = [NSString stringWithFormat:@"用户名：%@",[self randomNoNumber:8]];;
}

-(SFUserInfo *)getUserInfo{
    return self.userInfo;
}

// 随机生成字符串(由大小写字母组成)
-(NSString *)randomNoNumber: (int)len {
    
    char ch[len];
    for (int index=0; index<len; index++) {
        
        int num = arc4random_uniform(58)+65;
        if (num>90 && num<97) { num = num%90+65; }
        ch[index] = num;
    }
    
    return [[NSString alloc] initWithBytes:ch length:len encoding:NSUTF8StringEncoding];
}
@end
