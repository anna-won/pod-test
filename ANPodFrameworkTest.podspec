#
#  Be sure to run `pod spec lint PodFrameworkTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|
  s.name             = 'ANPodFrameworkTest'
  s.version          = '0.0.2'
  s.swift_version    = '5.0'
  s.summary          = 'PodFrameworkTest. ios SDK'

  s.description      = 'ANPodFrameworkTest SDK for iOS'
  s.homepage         = 'https://tde.sktelecom.com/stash/projects/SSW/repos/ssw_sdk_ios/browse?at=refs%2Fheads%2F0.1.2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anna-won' => 'togass@sk.com' }
  s.source           = { :git => 'https://github.com/anna-won/pod-test.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '12.4'
  
  #s.module_name = 'SSIHolder'
  
  s.frameworks = 'PodFrameworkTest'
  s.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => 'Frameworks',
      'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
      'ENABLE_BITCODE' => 'NO',
      'SKIP_INSTALL' => 'NO',
      'BUILD_LIBRARIES_FOR_DISTRIBUTION' => 'YES'
  }
  s.vendored_frameworks = 'Frameworks/PodFrameworkTest.xcframework'

end
