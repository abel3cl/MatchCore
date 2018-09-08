#
# Be sure to run `pod lib lint MatchCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MatchCore'
  s.version          = '0.1.0'
  s.summary          = 'Core components of Match'
  s.swift_version    = '4.1'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Core common components (models, controllers, extensions) of Match.
                       DESC

  s.homepage         = 'https://github.com/abel3cl/MatchCore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'git' => 'abel3cl@gmail.com' }
  s.source           = { :git => 'https://github.com/abel3cl/MatchCore.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'  
  s.osx.deployment_target = '10.10'

  s.source_files = 'MatchCore/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MatchCore' => ['MatchCore/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
