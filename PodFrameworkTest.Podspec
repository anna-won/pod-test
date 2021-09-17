#
#  Be sure to run `pod spec lint PodFrameworkTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "PodFrameworkTest"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of PodFrameworkTest."
  spec.homepage     = "http://EXAMPLE/PodFrameworkTest"
  
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "블록체인/인증개발CoE 원은경" => "togass@sk.com" }

  spec.ios.deployment_target = "12.4"
  
  spec.source       = { :git => "https://github.com/anna-won/pod-test.git", :tag => "#{spec.version}" }
  
  spec.frameworks = 'PodFrameworkTest'
 
  spec.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => './Frameworks',
      'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
      'ENABLE_BITCODE' => 'NO',
      'SKIP_INSTALL' => 'NO',
      'BUILD_LIBRARIES_FOR_DISTRIBUTION' => 'YES'
  }
  spec.vendored_frameworks = './Frameworks/PodFrameworkTest.xcframework'

end
