Pod::Spec.new do |s|
  s.name         = "GoogleMaterialDesignIcons"
  s.version      = "1.0.0"
  s.summary      = "It converts the material-design-icons svg file in the font file, it was easy to use."
  s.homepage     = "https://github.com/dekatotoro/GoogleMaterialDesignIcons"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Yuji Hato" => "hatoyujidev@gmail.com" }
  s.social_media_url   = "https://twitter.com/dekatotoro"
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/dekatotoro/GoogleMaterialDesignIcons.git, :tag => "1.0.0" }
  s.source_files = "Source/**/*.{h,m,swift}"
  s.resources    = 'Icon/**/*.{ttf}'
  s.requires_arc = true
end

