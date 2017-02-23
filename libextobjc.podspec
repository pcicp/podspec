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

  spec.subspec 'metamacros' do |subspec|
    subspec.source_files = 'extobjc/metamacros.h'
  end
  spec.subspec 'EXTRuntimeExtensions' do |subspec|
    subspec.source_files = 'extobjc/EXTRuntimeExtensions.{h,m}'
  end
  spec.subspec 'EXTADT' do |subspec|
    subspec.source_files = 'extobjc/EXTADT.{h,m}'
    subspec.dependency 'libextobjc/metamacros'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  spec.subspec 'EXTConcreteProtocol' do |subspec|
    subspec.source_files = 'extobjc/EXTConcreteProtocol.{h,m}'
    subspec.dependency 'libextobjc/metamacros'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  spec.subspec 'EXTCoroutine' do |subspec|
    subspec.source_files = 'extobjc/EXTCoroutine.h'
  end
  spec.subspec 'EXTKeyPathCoding' do |subspec|
    subspec.source_files = 'extobjc/EXTKeyPathCoding.h'
    subspec.dependency 'libextobjc/metamacros'
  end
  spec.subspec 'EXTNil' do |subspec|
    subspec.source_files = 'extobjc/EXTNil.{h,m}'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  spec.subspec 'EXTSafeCategory' do |subspec|
    subspec.source_files = 'extobjc/EXTSafeCategory.{h,m}'
    subspec.dependency 'libextobjc/metamacros'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  spec.subspec 'EXTScope' do |subspec|
    subspec.source_files = 'extobjc/EXTScope.{h,m}'
    subspec.dependency 'libextobjc/metamacros'
  end
  spec.subspec 'EXTSelectorChecking' do |subspec|
    subspec.source_files = 'extobjc/EXTSelectorChecking.{h,m}'
    subspec.dependency 'libextobjc/metamacros'
  end
  spec.subspec 'EXTSynthesize' do |subspec|
    subspec.source_files = 'extobjc/EXTSynthesize.h'
    subspec.dependency 'libextobjc/metamacros'
    subspec.dependency 'libextobjc/EXTRuntimeExtensions'
  end
  spec.subspec 'NSInvocation+EXT' do |subspec|
    subspec.source_files = 'extobjc/NSInvocation+EXT.{h,m}'
  end
  spec.subspec 'NSMethodSignature+EXT' do |subspec|
    subspec.source_files = 'extobjc/NSMethodSignature+EXT.{h,m}'
  end
end
