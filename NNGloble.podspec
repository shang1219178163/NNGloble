Pod::Spec.new do |s|

  s.name         = "NNGloble"
  s.version      = "1.5.3"
  s.summary      = "Macro,Const.AppKey."
  s.description  = "基础宏,常量值,第三方appKey配置"

  s.homepage     = "https://github.com/shang1219178163/NNGloble"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "BIN" => "shang1219178163@gmail.com" }

  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.source       = { :git => "https://github.com/shang1219178163/NNGloble.git", :tag => "#{s.version}" }

  s.source_files = "NNGloble/*"
  s.public_header_files = "NNGloble/*.h"
  s.resource_bundles = {
    'NNGloble' => ['NNGloble/Resources/*.xcassets']
  }

  s.libraries = 'sqlite3', 'c++'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage',
    'CoreLocation','CoreTelephony', 'GLKit','QuartzCore', 'ImageIO',
    'AssetsLibrary', 'MobileCoreServices', 'SystemConfiguration','ImageIO',
    'JavaScriptCore','WebKit'

end
