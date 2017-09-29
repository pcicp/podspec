Pod::Spec.new do |spec|
  spec.name         = 'UberSignature'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/uber/UberSignature'
  spec.authors      = 'Uber Open Source'
  spec.summary      = 'Provides an iOS view controller allowing a user to draw their signature with their finger in a realistic style.'
  spec.source       = { :git => 'https://github.com/uber/UberSignature.git' }
  spec.source_files = 'UberSignature/Signature/*.{h,m}', 'UberSignature/Signature/**/*.{h,m}'
end
