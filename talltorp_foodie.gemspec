# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'talltorp_foodie/version'

Gem::Specification.new do |spec|
  spec.name          = "talltorp_foodie"
  spec.version       = TalltorpFoodie::VERSION
  spec.authors       = ["Tobias Talltorp"]
  spec.email         = ["tobias@talltorp.se"]
  spec.summary       = "first version of a gem"
  spec.description   = "broccoli is bleh"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end