//
//  VersionResponse.m
//  ZHVersionManager
//
//  Created by Lee on 2016/9/25.
//  Copyright © 2016年 leezhihua All rights reserved.
//

#import "VersionResponse.h"

@implementation VersionResponse

+ (VersionResponse *)responseWithData:(NSData *)data; {
    if (data) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        VersionResponse *res = [[VersionResponse alloc] init];
        NSDictionary *result = [json[@"results"] firstObject];
        if (result) {
            [res setValuesForKeysWithDictionary:result];
            return res;
        }
        return nil;
    }
    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

@end
