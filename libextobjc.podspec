Pod::Spec.new do |spec|
  spec.name          = 'libextobjc'
  spec.version       = '0.5'
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/jspahrsummers/libextobjc'
  spec.authors       = { 'Justin Spahr-Summers' => 'jspahrsummers@github.com' }
  spec.summary       = 'A Cocoa library to extend the Objective-C programming language.'
  spec.description   = 'The Extended Objective-C library extends the dynamism of the Objective-C programming language to support additional patterns present in other dynamic programming languages (including those that are not necessarily object-oriented).\nlibextobjc is meant to be very modular – most of its classes and modules can be used with no more than one or two dependencies.'
  spec.source        = { :git => 'https://github.com/jspahrsummers/libextobjc.git', :tag => spec.version.to_s }
  spec.source_files  = 'extobjc/*.{h,m}'
  spec.exclude_files = 'extobjc/extobjc.h'

  subspec 'EXTRuntimeExtensions' do |sub_spec|
    sub_spec.source_files = 'extobjc/EXTRuntimeExtensions.{h,m}'
  end
  subspec 'EXTADT' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTADT.{h,m}'
    sub_spec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTConcreteProtocol' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTConcreteProtocol.{h,m}'
    sub_spec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTCoroutine' do |sub_spec|
    sub_spec.source_files = 'extobjc/EXTCoroutine.h'
  end
  subspec 'EXTKeyPathCoding' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTKeyPathCoding.h'
  end
  subspec 'EXTNil' do |sub_spec|
    sub_spec.source_files = 'extobjc/EXTNil.{h,m}'
    sub_spec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTSafeCategory' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSafeCategory.{h,m}'
    sub_spec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTScope' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTScope.{h,m}'
  end
  subspec 'EXTSelectorChecking' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSelectorChecking.{h,m}'
  end
  subspec 'EXTSynthesize' do |sub_spec|
    sub_spec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSynthesize.h'
    sub_spec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'NSInvocation+EXT' do |sub_spec|
    sub_spec.source_files = 'extobjc/NSInvocation+EXT.{h,m}'
  end
  subspec 'NSMethodSignature+EXT' do |sub_spec|
    sub_spec.source_files = 'extobjc/NSMethodSignature+EXT.{h,m}'
  end
end
