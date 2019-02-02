//
//  WLUMUtil.h
//  WLUMStatistics
//
//  Created by three stone 王 on 2019/1/5.
//  Copyright © 2019年 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

//
//#import <UMAnalytics/MobClick.h>
NS_ASSUME_NONNULL_BEGIN

@interface WLUMUtil : NSObject

+ (instancetype)shared;

- (void)regUMAppKey:(NSString *)appkey;

- (BOOL )checkAppKey;

// 0,    // default value
// 1,    // game
// 4    // DPlus
- (void)setScenarioType:(NSUInteger) stype;

- (void)mobEvent:(NSString *)event;

- (void)setCrashReportEnabled:(BOOL) enabled;

@end

NS_ASSUME_NONNULL_END
