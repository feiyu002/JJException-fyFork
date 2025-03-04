#
#  Be sure to run `pod spec lint JJException.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "JJException-fyFork"
  s.version      = "0.0.1"
  s.summary      = "Handle the objective-c crash exception."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                  JJException Handle the objective-c crash exception.
                   DESC

  s.homepage     = "https://github.com/jezzmemo/JJException"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "feiyu002" => "pang_fengyue@126.com" }
  # Or just: s.author    = "李杰"
  # s.authors            = { "李杰" => "jezz.li@hujiang.com" }
  # s.social_media_url   = "http://twitter.com/李杰"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"
  #s.platform     = :ios, "8.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/feiyu002/JJException-fyFork.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.default_subspec = 'All'
  s.subspec 'All' do |spec|
    spec.dependency 'JJException/Swizzle'
    spec.dependency 'JJException/ARC'
    spec.dependency 'JJException/MRC'
    spec.dependency 'JJException/Main'
    spec.dependency 'JJException/DeallocBlock'
  end

  s.subspec 'ARC' do |spec|
    spec.requires_arc = true
    spec.source_files  = "JJException/Source/ARC/*.{h,m}"
    spec.resource_bundles = {'JJException-fyFork' => ['JJException/Source/Resources/PrivacyInfo.xcprivacy']}
    spec.dependency 'JJException/Swizzle'
    spec.dependency 'JJException/Main'
    spec.dependency 'JJException/DeallocBlock'
  end

  s.subspec 'Swizzle' do |spec|
    spec.requires_arc = true
    spec.source_files  = "JJException/Source/Swizzle/*.{h,m}"
    spec.resource_bundles = {'JJException-fyFork' => ['JJException/Source/Resources/PrivacyInfo.xcprivacy']}
  end

  s.subspec 'Main' do |spec|
    spec.requires_arc = true
    spec.public_header_files = "JJException/Source/Main/JJException.h"
    spec.source_files  = "JJException/Source/Main/*.{h,m}"
    spec.resource_bundles = {'JJException-fyFork' => ['JJException/Source/Resources/PrivacyInfo.xcprivacy']}
  end

  s.subspec 'MRC' do |spec|
    spec.requires_arc = false
    spec.source_files  = "JJException/Source/MRC/*.{h,m}"
    spec.resource_bundles = {'JJException-fyFork' => ['JJException/Source/Resources/PrivacyInfo.xcprivacy']}
    spec.dependency 'JJException/Swizzle'
    spec.dependency 'JJException/Main'
  end

  s.subspec 'DeallocBlock' do |spec|
    spec.requires_arc = true
    spec.source_files  = "JJException/Source/DeallocBlock/*.{h,m}"
    spec.resource_bundles = {'JJException-fyFork' => ['JJException/Source/Resources/PrivacyInfo.xcprivacy']}
  end

  #s.source_files  = "JJException/Source/*.{h,m}"


  #s.public_header_files = "JJException/Source/JJException.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  #s.requires_arc = false

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
