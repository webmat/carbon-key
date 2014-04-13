# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carbon-key/version'

Gem::Specification.new do |spec|
  spec.name          = "carbon-key"
  spec.version       = CarbonKey::VERSION
  spec.authors       = ["Mathieu Martin"]
  spec.email         = ["webmat@gmail.com"]
  spec.summary       = %q{Do not use. This is not ready for consumption.}
  spec.description   = %q{Do not use. This code has: single file scripts, monkey-patches, global variables and so on. It's not ready for general consumption.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "eventmachine"
  spec.add_dependency "em-logger"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry-nav"
end
