Pod::Spec.new do |s|
  s.name         = "FontAwesome-BBExtensions"
  s.version      = "0.0.20"
  s.summary      = "Categories on NSString, UIFont, and UIImage to make creation of FontAwesome icons easier."
  s.description  = <<-DESC
  Categories to Foundation and UIKit classes to make it easier to create UIImage instances from FontAwesome Unicode characters. The naming scheme mirrors the class names used on the FontAwesome cheat sheet page at http://fontawesome.io/cheatsheet/.
                   DESC
  s.homepage     = "https://github.com/BionBilateral/FontAwesome-BBExtensions"
  s.license      = {:type => "BSD", :file => "license.txt"}
  s.author             = { "William Towe" => "willbur1984@gmail.com" }
  s.ios.deployment_target = "10.0"
  s.osx.deployment_target = "10.12"
  s.tvos.deployment_target = "10.0"
  s.watchos.deployment_target = "3.0"
  s.source       = {:git => "https://github.com/BionBilateral/FontAwesome-BBExtensions.git", :tag => s.version.to_s}
  s.source_files  = "FontAwesome-BBExtensions/**/*.{h,m}"
  s.exclude_files = "FontAwesome-BBExtensions/FontAwesome-BBExtensions-Info.h"
  s.ios.exclude_files = "FontAwesome-BBExtensions/macOS"
  s.osx.exclude_files = "FontAwesome-BBExtensions/iOS"
  s.tvos.exclude_files = "FontAwesome-BBExtensions/macOS"
  s.watchos.exclude_files = "FontAwesome-BBExtensions/iOS/UIButton*.{h,m}", "FontAwesome-BBExtensions/macOS"
  s.frameworks = "Foundation"
  s.ios.frameworks = "UIKit"
  s.tvos.frameworks = "UIKit"
  s.watchos.frameworks = "UIKit"
  s.osx.frameworks = "AppKit"
  s.requires_arc = true
  s.header_dir = "FontAwesome_BBExtensions"
end
