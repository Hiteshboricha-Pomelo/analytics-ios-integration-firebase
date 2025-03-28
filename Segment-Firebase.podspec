Pod::Spec.new do |s|
  s.name             = "Segment-Firebase"
  s.version          = "2.7.13"
  s.summary          = "Firebase Integration for Segment's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Firebase integration for the iOS library.
                       DESC

  s.homepage         = "http://segment.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Segment" => "friends@segment.com" }
  s.source           = { :git => "https://github.com/segment-integrations/analytics-ios-integration-firebase.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/segment'

  s.swift_version = '4.0'
  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = 'Segment-Firebase/Classes/**/*'
  s.default_subspec = 'Core'
  s.static_framework = true

  s.dependency 'Analytics'
  s.dependency 'Firebase', '>= 10.22', '< 12.0'
  s.dependency 'Firebase/Core', '>= 10.22', '< 12.0'
  s.dependency 'FirebaseAnalytics','>= 10.22', '< 12.0'

  s.subspec 'Core' do |core|
    #For users who only want the core Firebase package
  end

  s.subspec 'DynamicLinks' do |dynamiclinks|
    # This will bundle in Firebase Dynamic Link support
    dynamiclinks.dependency 'Firebase/DynamicLinks'
  end
end
