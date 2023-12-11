#
# Be sure to run `pod lib lint krysielIOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'krysielIOS'
  s.version          = '0.1.0'
  s.summary          = 'A short description of krysielIOS.'
 
  s.homepage         = 'https://github.com/krysiel86/krysielIOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'krysiel86' => 'myoungin@tpmn.io' }
  s.source           = { :git => 'https://github.com/krysiel86/krysielIOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'krysielIOS/Classes/**/*'
  s.swift_versions = '5.0'

  # s.resource_bundles = {
  #   'krysielIOS' => ['krysielIOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
