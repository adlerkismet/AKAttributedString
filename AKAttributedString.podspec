Pod::Spec.new do |s|
  s.name         = "AKAttributedString"
  s.version      = "1.0.1"       
  s.license      = "MIT"    
  s.summary      = "An easy way to create NSAttributedString instance without NSAttributedStringKey." 

  s.homepage     = "https://github.com/adlerkismet/AKAttributedString" 
  s.source       = { :git => "https://github.com/adlerkismet/AKAttributedString.git", :tag => "#{s.version}" }
  s.source_files = "AKAttributedString/*.{h,m}" 
  s.requires_arc = true 
  s.platform     = :ios, "8.0" 
  s.frameworks   = "UIKit", "Foundation"
  # s.dependency = "AFNetworking" # 依赖库
  
  # User
  s.author             = { "BY" => "sckismet07@gmail.com" } 
  s.social_media_url   = "http://kisscu.com/" 

end