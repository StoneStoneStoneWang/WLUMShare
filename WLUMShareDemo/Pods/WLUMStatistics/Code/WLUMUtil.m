//
//  WLUMUtil.m
//  WLUMStatistics
//
//  Created by three stone 王 on 2019/1/5.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "WLUMUtil.h"
#import <UMCommon/UMCommon.h>

static WLUMUtil *manager = nil;
@implementation WLUMUtil

+ (instancetype)shared {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [self new];
    });
    return manager;
}
#pragma mark----注册友盟key
- (void)regUMAppKey:(NSString *)appkey {
    
    [UMConfigure initWithAppkey:appkey channel:@"App Store"];
}

@end
