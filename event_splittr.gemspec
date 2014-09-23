# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'event_splittr/version'

Gem::Specification.new do |spec|
  spec.name          = "event_splittr"
  spec.version       = EventSplittr::VERSION
  spec.authors       = ["Timothy Andrew"]
  spec.email         = ["mail@timothyandrew.net"]
  spec.summary       = "Split photos into events by date."
  spec.description   = ""
  spec.homepage      = "http://github.com/timothyandrew/event_splittr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "exifr", "~> 1.1.3"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
