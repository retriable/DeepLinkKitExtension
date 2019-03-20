Pod::Spec.new do |s|
s.name     = 'DeepLinkKitExtension'
s.version  = '1.0.0'
s.license  = 'MIT'
s.summary  = 'DeepLinkKit Extension'
s.homepage = 'https://github.com/retriable/DeepLinkKitExtension'
s.author   = { 'retriable' => 'retriable@retriable.com' }
s.source   = { :git => 'https://github.com/retriable/DeepLinkKitExtension.git',:tag => "#{s.version}" }
s.description = 'DeepLinkKit Extension.'
s.requires_arc   = true
s.ios.deployment_target = '8.0'
s.tvos.deployment_target = '9.0'
s.source_files = 'DeepLinkKitExtension/*.{h,m}'
spec.dependency 'DeepLinkKit'
spec.dependency 'JRSwizzle'
end
