Pod::Spec.new do |s|
  s.name         = "ScrollViewLinker"
  s.version      = "0.0.1"
  s.summary      = "Links your scroll views for parallax."

  s.description  = <<-DESC
                   This library simplifies linking multiple scroll views for parallax or otherwise having multiple views scroll at once.

                   * Provides normalizedContentOffset to UIScrollView, ranged from {0.0, 0.0} to {1.0, 1.0}.
                   * ScrollViewLinker can be added to storyboard, and all scroll views can be added to it.
                   DESC

  s.homepage     = "http://EXAMPLE/ScrollViewLinker"
  s.license      = 'MIT (example)'
  s.author       = { "Peter DeWeese" => "peter@dewee.se" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "http://EXAMPLE/ScrollViewLinker.git", :tag => "0.0.1" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.public_header_files = 'Classes/**/*.h'

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  s.requires_arc = true
end