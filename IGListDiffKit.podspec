Pod::Spec.new do |s|
  s.name = 'IGListDiffKit'
  s.version = `scripts/version.sh`
  s.summary = 'Diffing utilities for a data-driven UICollectionView framework.'
  s.homepage = 'https://github.com/cendolinside123/IGListKit'
  s.documentation_url = 'https://instagram.github.io/IGListKit'
  s.description = 'Diffing utilities for a data-driven UICollectionView framework for building fast and flexible lists.'

  s.license =  { :type => 'MIT' }
  s.authors = 'Jan'
  s.social_media_url = 'https://twitter.com/fbOpenSource'
  s.source = {
    :git => 'https://github.com/cendolinside123/IGListKit.git',
    :branch => 'Jan/Privacy-Manifest-Support'
  }

  s.source_files = 'Source/IGListDiffKit/**/*.{h,m,mm}'
  s.private_header_files = 'Source/IGListDiffKit/Internal/*.h'

  s.requires_arc = true

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.ios.frameworks = 'UIKit'
  s.tvos.frameworks = 'UIKit'
  s.osx.frameworks = 'Cocoa'

  s.library = 'c++'
  s.pod_target_xcconfig = {
        'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
        'CLANG_CXX_LIBRARY' => 'libc++',
  }
  s.ios.resource_bundles = {'IGListDiffKit' => ['Source/PrivacyInfo.xcprivacy']}
  s.tvos.resource_bundles = {'IGListDiffKit' => ['Source/PrivacyInfo.xcprivacy']}
  # s.ios.resource_bundles = {'IGListDiffKit' => ['Source/PrivacyInfo.xcprivacy']}
end
