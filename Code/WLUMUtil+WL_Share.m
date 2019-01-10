//
//  WLUMUtil+WL_Share.m
//  WLUMShareDemo
//
//  Created by three stone 王 on 2019/1/10.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import "WLUMUtil+WL_Share.h"

#import <UMShare/UMShare.h>

#import <UShareUI/UShareUI.h>

@implementation WLUMUtil (WL_Share)

- (void)setPlats:(NSArray *)plats {
    
    [UMSocialUIManager setPreDefinePlatforms:plats];
}

- (void)configWechat:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL {
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:appkey appSecret:secret redirectURL:redirectURL];
}

- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation{
    
    return [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
}
- (BOOL)handle:(NSURL *)url options:(NSDictionary *)options {
    
    return [[UMSocialManager defaultManager] handleOpenURL:url options:options];
}
@end
