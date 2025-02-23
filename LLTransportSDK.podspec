#
# Be sure to run `pod lib lint LLTransportSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LLTransportSDK'
  s.version          = '1.1.1'
  s.summary          = 'LLTransportSDK provide local QRCode-ride business'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.brightcns.cn/Liujiang'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'howoften' => 'forliujiang@126.com' }
  s.source           = { :git => 'https://github.com/howoften/LLTransportSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  #s.source_files = 'LLTransportSDK/Classes/**/*'
  #s.resource = 'LLTransportSDK/Assets/LLTransport.bundle'
  s.vendored_frameworks = 'LLTransportSDK/Frameworks/LLTransportSDK.framework'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MJRefresh'
   s.dependency 'MBProgressHUD'
   s.dependency 'IQKeyboardManager'
   s.dependency 'AlipaySDK-iOS'
   s.dependency 'WechatOpenSDK'
   s.frameworks = "CFNetwork", "CoreTelephony", "Security", "SystemConfiguration", "MessageUI", "MobileCoreServices", "StoreKit", "QuartzCore","Foundation", "UIKit"
   # 添加 target_xconfig
   s.pod_target_xcconfig = {
       'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/AlipaySDK-iOS $(PODS_ROOT)/WechatOpenSDK',
       'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup',
       'ENABLE_BITCODE' => 'NO',
   }
   
end
