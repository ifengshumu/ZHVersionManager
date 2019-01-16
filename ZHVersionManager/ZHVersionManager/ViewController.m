//
//  ViewController.m
//  ZHVersionManager
//
//  Created by Lee on 2018/10/11.
//  Copyright © 2018年 leezhihua All rights reserved.
//

#import "ViewController.h"
#import "ZHVersionManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [ZHVersionManager checkAppVersionWithAppID:@"1441073644" completionHandler:^(BOOL isNeedUpdate, VersionResponse *response) {
        if (isNeedUpdate) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"更新" message:response.releaseNotes preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"稍后提示" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [alert addAction:action1];
            UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"立即更新" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [ZHVersionManager updateAppWithAppID:response.trackId.stringValue];
            }];
            [alert addAction:action2];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
}


@end
