Pod::Spec.new do |s|
  s.name             = 'NetworkSDK'
  s.version          = '1.0.0'
  s.summary          = 'A network service SDK'
  s.description      = <<-DESC
                       NetworkSDK is a simple SDK for managing network requests.
                       DESC
  s.homepage         = 'https://your-repo-url'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mudit Bhatnagar' => 'mudit8888@gmail.com' }
  s.source           = { :git => 'https://your-repo-url.git', :tag => s.version.to_s }
  s.platform         = :ios, '17.2'
  s.vendored_frameworks = 'NetworkSDK.xcframework'
  s.swift_version    = '5.0'
end
