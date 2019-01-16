# ZHVersionManager
版本管理，和App Store比对。

# cocoapods support
```
pod 'ZHVersionManager'
```

## 使用时只需传入APP在App Store的APP ID即可
```
[ZHVersionManager checkAppVersionWithAppID:@"1329918420" completionHandler:^(BOOL isNeedUpdate, VersionResponse *response) {
    if (isNeedUpdate) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:response.releaseNotes preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"稍后提示" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert addAction:action1];
        UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"立即更新" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [[ZHVersionManager defaultManager] updateApp];
        }];
        [alert addAction:action2];
        [self presentViewController:alert animated:YES completion:nil];
    }
}];
```
