//
//  WLUMUtil+Share.m
//  WLUMShareDemo
//
//  Created by three stone 王 on 2019/1/10.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "WLUMUtil+Share.h"

#import <UMShare/UMShare.h>

@implementation WLUMUtil (Share)
- (void)setUsingHttpsWhenShareContent:(BOOL)isUsingHttp {
    
    [UMSocialGlobal shareInstance].isUsingHttpsWhenShareContent = isUsingHttp;
}
- (void)configWechat:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL {
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:appkey appSecret:secret redirectURL:redirectURL];
}

- (void)configQQ:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL {
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:appkey appSecret:secret redirectURL:redirectURL];
}

- (void)shareToPlatform:(NSInteger)platformType messageObject:(id)messageObject currentViewController:(id)currentViewController completion:(WLSocialRequestCompletionHandler)completion {
    
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:currentViewController completion:completion];
}
- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation{
    
    return [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
}

- (BOOL)handle:(NSURL *)url options:(NSDictionary *)options {
    
    return [[UMSocialManager defaultManager] handleOpenURL:url options:options];
}

@end
