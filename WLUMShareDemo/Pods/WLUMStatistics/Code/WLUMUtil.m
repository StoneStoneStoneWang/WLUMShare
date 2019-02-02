//
//  WLUMUtil.m
//  WLUMStatistics
//
//  Created by three stone 王 on 2019/1/5.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "WLUMUtil.h"
#import <UMCommon/UMCommon.h>
#import <UMAnalytics/MobClick.h>
static WLUMUtil *manager = nil;
@interface WLUMUtil()

@property (nonatomic ,copy) NSString *appkey;

@end

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
    
    self.appkey = appkey;
    
    [UMConfigure initWithAppkey:appkey channel:@"App Store"];
}
- (void)setScenarioType:(NSUInteger)stype {
    
    if ([self checkAppKey]) { [MobClick setScenarioType:stype]; }
}
- (void)mobEvent:(NSString *)event {
    
    if ([self checkAppKey]) { [MobClick event:event]; }
}
- (void)setCrashReportEnabled:(BOOL)enabled {
    
    if ([self checkAppKey]) { [MobClick setCrashReportEnabled:enabled]; }
    
}

- (BOOL )checkAppKey {
    
    BOOL res = self.appkey && self.appkey.length;
    
    if (!res) { NSLog(@"请先设置友盟 App key"); }
    
    return res;
}
@end
