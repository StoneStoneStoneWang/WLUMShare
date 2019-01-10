//
//  WLUMUtil+WL_Share.h
//  WLUMShareDemo
//
//  Created by three stone 王 on 2019/1/10.
//  Copyright © 2019年 three stone 王. All rights reserved.
//


#import <WLUMStatistics/WLUMUtil.h>


NS_ASSUME_NONNULL_BEGIN

typedef void(^UMSuccBlock)(void);

typedef void(^UMFailBlock)(void);

@interface WLUMUtil (WL_Share)

#pragma mark --- 设置分享面板

- (void)setPlats:(NSArray *)plats;

- (void)configWechat:(NSString *)appkey andSecret:(NSString *)secret andRedirectURL:(NSString *)redirectURL;

- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation;

- (BOOL)handle:(NSURL *)url options:(NSDictionary*)options ;

@end

NS_ASSUME_NONNULL_END
