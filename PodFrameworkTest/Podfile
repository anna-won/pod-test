source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target 'PodFrameworkTest' do
   project 'PodFrameworkTest'
   pod 'RxSwift', '6.0.0'
   pod 'SwiftyBeaver'
   pod 'ObjectMapper'
   pod 'SwiftLint'
end

target 'PodFrameworkTestTests' do
  project 'PodFrameworkTest'
  pod 'RxSwift'
  pod 'SwiftyBeaver'
  pod 'ObjectMapper'
  pod 'Alamofire'
  pod 'SwiftLint'
end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings[‘EXCLUDED_ARCHS[sdk=iphonesimulator*]’] = ‘arm64’
    config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = ‘YES’
  end
end

