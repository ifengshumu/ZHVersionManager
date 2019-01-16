//
//  ZHVersionManager.h
//
//  Created by Lee on 2016/9/25.
//  Copyright © 2016年 leezhihua All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VersionResponse.h"

@interface ZHVersionManager : NSObject

/**
 检查APP Version

 @param appID APP在App Store的ID
 @param completionHandler 检查结果
 */
+ (void)checkAppVersionWithAppID:(NSString *)appID completionHandler:(void(^)(BOOL isNeedUpdate, VersionResponse *response))completionHandler;

/**
 更新APP
 */
+ (void)updateAppWithAppID:(NSString *)appID;

/**
 APP当前版本
 */
+ (NSString *)currentVersion;

@end
