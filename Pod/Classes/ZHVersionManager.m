//
//  ZHVersionManager.m
//
//  Created by Lee on 2016/9/25.
//  Copyright © 2016年 leezhihua All rights reserved.
//

#import "ZHVersionManager.h"
#import <UIKit/UIKit.h>

@implementation ZHVersionManager

+ (void)checkAppVersionWithAppID:(NSString *)appID completionHandler:(void(^)(BOOL isNeedUpdate, VersionResponse *response))completionHandler {
    NSString *url = [NSString stringWithFormat:@"https://itunes.apple.com/lookup?id=%@", appID];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:[NSURL URLWithString:url] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            completionHandler(NO, nil);
        } else {
            VersionResponse *res = [VersionResponse responseWithData:data];
            BOOL update = NO;
            if (res.version) {
                update = (res.version.floatValue > [self currentVersion].floatValue);
            }
            dispatch_sync(dispatch_get_main_queue(), ^{
                completionHandler(update, res);
            });
        }
    }];
    [task resume];
}

+ (void)updateAppWithAppID:(NSString *)appID {
    NSString *url = [NSString stringWithFormat:@"itms-apps://itunes.apple.com/cn/app/id%@?mt=8", appID];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

+ (NSString *)currentVersion {
    NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
    NSString *version = info[@"CFBundleShortVersionString"];
    return version;
}

@end
