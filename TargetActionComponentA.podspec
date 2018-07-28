#
# Be sure to run `pod lib lint TargetActionComponentA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TargetActionComponentA'
  s.version          = '0.2.0'
  s.summary          = 'TargetActionComponentA.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TargetActionComponentA，组件化模块A
                       DESC

  s.homepage         = 'https://github.com/HQApe/TargetActionComponentA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'zhanghuaqing8080@163.com' }
  s.source           = { :git => 'https://github.com/HQApe/TargetActionComponentA.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

s.source_files = 'TargetActionComponentA/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'TargetActionComponentA' => ['TargetActionComponentA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CTMediator'
end
