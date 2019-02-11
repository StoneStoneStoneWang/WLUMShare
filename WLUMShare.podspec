
Pod::Spec.new do |s|

s.name         = "WLUMShare"
s.version      = "1.0.8"
s.summary      = "A Lib For um.友盟分享封装"
s.description  = <<-DESC
友盟分享封装
DESC

s.homepage     = "https://github.com/StoneStoneStoneWang/WLUMShare"
s.license      = { :type => "MIT", :file => "LICENSE.md" }
s.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
s.platform     = :ios, "9.0"
s.ios.deployment_target = "9.0"

s.requires_arc = true

s.frameworks = 'UIKit', 'Foundation'

s.source = { :git => "https://github.com/StoneStoneStoneWang/WLUMShare.git", :tag => "#{s.version}" }

s.source_files = "Code/**/*.{h,m}"

s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

s.static_framework = true

s.dependency 'WLUMStatistics'

s.dependency 'UMCShare/UI'

s.dependency 'UMCShare/Social/WeChat'

s.dependency 'UMCShare/Social/QQ'

s.prefix_header_contents = '#import <UMCShare/UI.h>'

end


