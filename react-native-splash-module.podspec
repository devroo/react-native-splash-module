require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-splash-module"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'devroo'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/devroo/react-native-splash-module", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React-Core"
end
