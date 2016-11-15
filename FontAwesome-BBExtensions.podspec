Pod::Spec.new do |s|
  s.name         = "FontAwesome-BBExtensions"
  s.version      = "0.0.7"
  s.summary      = "Categories on NSString, UIFont, and UIImage to make creation of FontAwesome icons easier."
  s.description  = <<-DESC
  Categories to Foundation and UIKit classes to make it easier to create UIImage instances from FontAwesome Unicode characters. The naming scheme mirrors the class names used on the FontAwesome cheat sheet page at http://fontawesome.io/cheatsheet/.
                   DESC
  s.homepage     = "https://github.com/BionBilateral/FontAwesome-BBExtensions"
  s.license      = {:type => "BSD", :file => "license.txt"}
  s.author             = { "William Towe" => "willbur1984@gmail.com" }
  s.ios.deployment_target = "10.0"
  s.watchos.deployment_target = "3.0"
  s.source       = {:git => "https://github.com/BionBilateral/FontAwesome-BBExtensions.git", :tag => s.version.to_s}
  s.source_files  = "FontAwesome-BBExtensions/*.{h,m}"
  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true
  s.header_dir = "FontAwesome_BBExtensions"
end
