Pod::Spec.new do |s|
  s.name             = 'PayButton'
  s.version          = '0.5.1'
  s.summary          = 'PayButton'
  s.description      = "PayButton PayButton PayButton"
  s.homepage         = 'https://github.com/payskyCompany/payButtonIOS'
  s.license = { :type => 'MIT', :file => 'README.md' }
  s.author           = { 'payskyCompany' => 'ahmed.agamy@paysky.io' }
  s.source           = { :git => 'https://github.com/payskyCompany/payButtonIOS.git', :tag => s.version.to_s }
  s.xcconfig = { "APPLY_RULES_IN_COPY_FILES" => "YES", "STRINGS_FILE_OUTPUT_ENCODING" => "binary" ,"OTHER_LDFLAGS" => "-lz" }
            s.public_header_files = 'PayButton/PayButton-Bridging-Header.h'




          s.exclude_files = [
   'PayButton/TestApi/Base.lproj/LaunchScreen.storyboard',
     'PayButton/TestApi/Base.lproj/Main.storyboard',
     'PayButton/TestApi/ViewController.swift',
     'PayButton/AppDelegate.swift',
     'PayButton/Info.plist',
     'PayButton/Assets.xcassets/AppIcon.appiconset/**']


        s.platform = :osx, '10.7'
        s.platform = :ios, '8.0'
        s.ios.deployment_target = '11.0'
    	s.framework = "UIKit"
    

  spec.dependency 'Alamofire', '~> 5.0.0-rc.3'
  spec.dependency 'EVReflection', '~> 5.10.1'
  spec.dependency 'PayCardsRecognizer', '~> 1.1.7'
  spec.dependency 'PopupDialog', '~> 1.1.1'

s.static_framework = true
s.requires_arc = true
s.resource_bundle = { "PayButton" => ["PayButton/Strings/*.lproj/*.strings"] }
end