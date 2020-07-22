package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = "react-native-vlc-media-player"
  s.version          = package['version']
  s.summary          = "VLC player for React Native"
  s.description      = package['description']
  s.author           = package['author']
  s.license          = package['license']
  s.homepage         = package['repository']['url']
  s.source           = { :git => "https://github.com/razorRun/react-native-vlc-media-player.git" }
  s.source_files     = 'ios/RCTVLCPlayer/*'

  s.platform         = :ios, '9.0'
  s.requires_arc     = true
  s.static_framework = true

  s.dependency 'React'
  s.dependency 'MobileVLCKit', '3.3.13'
end
