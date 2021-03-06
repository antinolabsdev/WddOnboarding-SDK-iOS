Pod::Spec.new do |spec|

  spec.name         = 'WddOnboard'
  spec.version      = '1.0.1'
  spec.summary      = 'A simple image recognition framework'
  spec.homepage     = 'https://github.com/antinolabsdev/WddOnboarding-SDK-iOS'
  spec.description  = 'WddOnboarding is a simple framework for image Recognition.'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { 'Sandeep Ahuja' => 'sandeep.ahuja493@gmail.com' }

  spec.platform     = :ios
  spec.swift_version = '4.2'
  spec.ios.deployment_target = '10.0'
  spec.source       = { :git => 'https://github.com/antinolabsdev/WddOnboarding-SDK-iOS.git', :tag => "#{spec.version}" }

  spec.requires_arc = true
  spec.ios.vendored_frameworks = 'WddOnboard.framework'

  spec.exclude_files = "Classes/Exclude"

  #spec.dependency 'CarbonKit'
  #spec.dependency 'MBProgressHUD'
  #spec.dependency 'AWSRekognition'

end
