Pod::Spec.new do |s|

  s.name         = "AnchorKit"
  s.version      = "0.0.2"
  s.summary      = "A way to simplify usage of layout anchors"

  s.description  = "A DSL library of working with auto layout in swift in a simpler and safer way"

 s.homepage     = "https://github.com/DavidKmn/AnchorKit"

  s.license      = "MIT (example)"

  s.author             = { "DavidKmn" => "davidk.9889@gmail.com" }

  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/DavidKmn/AnchorKit", :tag => "{s.version}" }

  s.swift_version = "4.2" 

  s.source_files  = "AnchorKit"

end
