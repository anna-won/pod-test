Pod::Spec.new do |s|
  s.name             = 'SSIHolder'
  s.version          = '2.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'SSIHolder. ios SDK'

  s.description      = 'Self Sovrin Idendity SDK for iOS'
  s.homepage         = 'https://tde.sktelecom.com/stash/projects/SSW/repos/ssw_sdk_ios/browse?at=refs%2Fheads%2F0.1.2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anna-won' => 'togass@sk.com' }
  s.source           = { :git => 'https://tde.sktelecom.com/stash/scm/ssip/ssisdk_ios.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '12.4'
  
  s.module_name = 'SSIHolder'
  
  s.dependency 'ObjectMapper'
  s.dependency 'RxSwift', '6.0.0'
  s.dependency 'SwiftyBeaver'
  
  s.frameworks = 'Indy','SSIHolder'
  s.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '/Users/eunkyungwon/SSI/SSIHolder',
      'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
      'ENABLE_BITCODE' => 'NO',
      'SKIP_INSTALL' => 'NO',
      'BUILD_LIBRARIES_FOR_DISTRIBUTION' => 'YES'
  }
  s.vendored_frameworks = 'SSIHolder/Indy.xcframework', 'SSIHolder/SSIHolder.xcframework'

end
