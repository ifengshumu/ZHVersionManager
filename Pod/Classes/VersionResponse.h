//
//  VersionResponse.h
//  ZHVersionManager
//
//  Created by Lee on 2016/9/25.
//  Copyright © 2016年 leezhihua All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VersionResponse : NSObject
@property (nonatomic, copy) NSString *releaseNotes;//更新描述
@property (nonatomic, copy) NSString *version;//App Store版本
@property (nonatomic, copy) NSString *trackName;//APP名称
@property (nonatomic, strong) NSNumber *trackId;//APP ID

+ (VersionResponse *)responseWithData:(NSData *)data;
@end

