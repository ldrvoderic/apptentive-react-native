require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = "https://github.com/apptentive/apptentive-react-native"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/apptentive/apptentive-react-native.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'apptentive-ios'
end