# Encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/universal_analytics/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-universal_analytics'
  spec.version       = Rack::UniversalAnalytics::VERSION
  spec.authors       = ['Michael Deering']
  spec.email         = ['mdeering@mdeering.com']
  spec.summary       = %q{Rack middleware for inserting Google Universal Analytics}
  spec.description   = %q{Rack middleware for inserting Google Universal Analytics and calling its API.}
  spec.homepage      = 'https://github.com/mdeering/rack-universal_analytics'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end