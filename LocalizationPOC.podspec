Pod::Spec.new do |spec|
  spec.name         = 'LocalizationPOC'
  spec.version      = '0.0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/jeroentrappers/LocalizationPOC'
  spec.authors      = { 'Jeroen Trappers' => 'jeroen.trappers@gmail.com' }
  spec.summary      = 'Localization proof of concept for iOS. Let\'s you change the language on the fly.'
  spec.source       = { :git => 'https://github.com/jeroentrappers/LocalizationPOC.git' }
  spec.source_files = 'LocalizationPOC/LocalizationSystem.{h,m}'
end
