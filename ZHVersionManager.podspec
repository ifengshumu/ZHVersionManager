#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

    s.name         = "ZHVersionManager"
    s.version      = "1.1.0"
    s.summary      = "版本管理"
    s.description  = "版本管理，和App Store比对。"

    s.homepage     = "https://github.com/leezhihua/ZHVersionManager"
    s.license      = { :type => "MIT", :file => "LICENSE" }

    s.author       = { "leezhihua" => "leezhihua@yeah.net" }

    # 支持的最低iOS版本
    s.ios.deployment_target = "8.0"

    # git地址
    s.source       = { :git => "https://github.com/leezhihua/ZHVersionManager.git", :tag => "#{s.version}" }

    # 库文件
    s.source_files = "Pod/Classes/*.{h,m}"
    # 图片、bundle等资源文件
    # s.resources = "Pod/Assets/*.{png,xib,nib,bundle}"

    # 三方的framework文件
    # s.ios.vendored_frameworks = "Pod/Assets/*.framework"
    # 三方的.a文件
    # s.ios.vendored_libraries = "Pod/Assets/*.a"

    # 使用到的系统库
    s.frameworks = "UIKit"

    # 是否使用ARC
    s.requires_arc = true

    # 依赖的三方库，如果有多个分开写
    # s.dependency "JSONKit", "~> 1.4"
    # s.dependency "AFNetworking", "~> 1.4"

end
