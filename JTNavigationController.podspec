Pod::Spec.new do |s|
  s.name             = "JTNavigationController"
  s.version          = "1.0.0"
  s.summary          = "NavigationController平滑切换页面"
  s.description      = <<-DESC
                      一个类似网易云音乐和网易新闻页面切换效果的导航控制器.
                      DESC

  s.homepage         = "https://github.com/zhengbomo/JTNavigationController"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "bomo" => "zhengbomo@hotmail.com" }
  s.source           = { :git => "https://github.com/zhengbomo/JTNavigationController", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/NAME'


  s.platform     = :ios, '7.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  # 源文件
  #s.source_files = 'IJKPlayerFramework/*'
  s.source_files  = "JTNavigationController/*.{h,m}"
  # s.resources = 'Assets'

  # 系统以来framework
  s.frameworks = 'Foundation', 'UIKit'

  # 第三方以来
  #s.dependency 'FLKAutoLayout', '~> 0.1'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'

  # 静态库.a或.framework
  #s.vendored_libraries = 'IJKPlayerFramework/IJKPlayerFramework.framework'

  # xcconfig配置
  #s.xcconfig     = {'OTHER_LDFLAGS' => '-ObjC'}
end
