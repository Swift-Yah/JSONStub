#
# Be sure to run `pod lib lint JSONStub.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JSONStub'
  s.version          = '0.1.1'
  s.summary          = 'Use JSONStub to easily load JSON files into your Mappable objects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
We use some extensions to easily allows us to load a JSON file into a Mappable object.
Makes more ease test ObjectMapper parsers.
                       DESC

  s.homepage         = 'https://github.com/Swift-Yah/JSONStub'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rafael da Silva Ferreira' => 'rafael@swift-yah.io' }
  s.source           = { :git => 'https://github.com/Swift-Yah/JSONStub.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JSONStub/Classes/**/*'

  s.dependency 'ObjectMapper'
end
