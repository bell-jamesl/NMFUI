Pod::Spec.new do |s|
  s.name             = 'NMFUI'
  s.version          = '0.0.1'
  s.summary          = 'POC for NMF UI Components'
 
  s.description      = <<-DESC
                       This is an example for poc for NMF UI Components.
                       DESC
 
  s.homepage         = 'https://github.com/bell-jamesl/NMFUI'
  s.social_media_url = 'https://twitter.com/bell'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'James Laurenstin' => 'author@gmail.com' }
  s.source           = { :git => 'https://github.com/bell-jamesl/NMFUI.git', :tag => s.version.to_s }
  #s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'

  s.module_name = 'NMFUI'
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  s.source_files = 'NMFUI/Sources/**/*.{swift,plist}'
  s.frameworks = 'UIKit', 'Foundation'
  #s.dependency 'Alamofire', '~> 4.7.2'

  #s.resources = "NMF/**/*.{png,jpeg,jpg,storyboard,xib}"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #
  # s.public_header_files = 'Pod/Classes/**/*.h'

  # s.resource_bundles = {
  #   'Snorlax' => ['Snorlax/Assets/*.png']
  # }
end
