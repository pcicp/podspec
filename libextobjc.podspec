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

  subspec 'EXTRuntimeExtensions' do |subspec|
    subspec.source_files = 'extobjc/EXTRuntimeExtensions.{h,m}'
  end
  subspec 'EXTADT' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTADT.{h,m}'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTConcreteProtocol' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTConcreteProtocol.{h,m}'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTCoroutine' do |subspec|
    subspec.source_files = 'extobjc/EXTCoroutine.h'
  end
  subspec 'EXTKeyPathCoding' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTKeyPathCoding.h'
  end
  subspec 'EXTNil' do |subspec|
    subspec.source_files = 'extobjc/EXTNil.{h,m}'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTSafeCategory' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSafeCategory.{h,m}'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'EXTScope' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTScope.{h,m}'
  end
  subspec 'EXTSelectorChecking' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSelectorChecking.{h,m}'
  end
  subspec 'EXTSynthesize' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h', 'extobjc/EXTSynthesize.h'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  subspec 'NSInvocation+EXT' do |subspec|
    subspec.source_files = 'extobjc/NSInvocation+EXT.{h,m}'
  end
  subspec 'NSMethodSignature+EXT' do |subspec|
    subspec.source_files = 'extobjc/NSMethodSignature+EXT.{h,m}'
  end
end
