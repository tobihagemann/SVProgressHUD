Pod::Spec.new do |s|
  s.name     = 'SVProgressHUD'
  s.version  = '1.1.3'
  s.platform = :ios, '6.1'
  s.license  = 'MIT'
  s.summary  = 'A clean and lightweight progress HUD for your iOS app.'
  s.homepage = 'http://samvermette.com/199'
  s.authors   = { 'Sam Vermette' => 'hello@samvermette.com' }
  s.source   = { :git => 'https://github.com/TransitApp/SVProgressHUD.git', :tag => s.version.to_s }

  s.description = 'SVProgressHUD is an easy-to-use, clean and lightweight progress HUD for iOS. It’s a simplified and prettified alternative to the popular MBProgressHUD. The success and error icons are from Freepik.'

  s.framework    = 'QuartzCore'
  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'SVProgressHUD/*.{h,m}'
    core.resources = 'SVProgressHUD/SVProgressHUD.bundle'
  end

  s.subspec 'AppExtension' do |ext|
    ext.source_files = 'SVProgressHUD/*.{h,m}'
    ext.resources = 'SVProgressHUD/SVProgressHUD.bundle'
    ext.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SV_APP_EXTENSIONS=1' }
  end
end
