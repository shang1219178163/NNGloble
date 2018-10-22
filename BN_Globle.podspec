Pod::Spec.new do |s|

  s.name         = "BN_Globle"
  s.version      = "1.1.4"
  s.summary      = "Macro,Const.AppKey."
  s.description  = <<-DESC
                    基础宏,常量值,第三方appKey配置
                   DESC

  s.homepage     = "https://github.com/shang1219178163/BN_Globle"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "BIN" => "shang1219178163@gmail.com" }

  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.source       = { :git => "https://github.com/shang1219178163/BN_Globle.git", :tag => "#{s.version}" }

  s.source_files = "BN_Globle/*"
  s.public_header_files = "BN_Globle/*.h"


  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage',
    'CoreLocation','CoreTelephony', 'GLKit','QuartzCore', 'ImageIO','Accelerate',
    'AssetsLibrary', 'MobileCoreServices', 'SystemConfiguration','ImageIO',
    'JavaScriptCore','WebKit'

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
