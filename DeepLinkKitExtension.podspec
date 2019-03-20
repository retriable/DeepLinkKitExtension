Pod::Spec.new do |spec|
spec.name     = 'DeepLinkKitExtension'
spec.version  = '1.0.0'
spec.license  = 'MIT'
spec.summary  = 'DeepLinkKit Extension'
spec.homepage = 'https://github.com/emsihyo/DeepLinkKitExtension'
spec.author   = { 'emsihyo' => 'emsihyo@gmail.com' }
spec.source   = { :git => 'https://github.com/retriable/DeepLinkKitExtension.git',:tag => "#{spec.version}" }
spec.description = 'DeepLinkKit Extension.'
spec.requires_arc = true
spec.source_files = 'DeepLinkKitExtension/*.{h,m}'
spec.ios.deployment_target = '8.0'
spec.tvos.deployment_target = '9.0'
spec.dependency 'DeepLinkKit'
spec.dependency 'JRSwizzle'
end
