# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/google/storage/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-google-storage"
  spec.version       = Carrierwave::Google::Storage::VERSION
  spec.authors       = ["Jasdeep Singh"]
  spec.email         = ["narang.jasdeep@gmail.com"]

  spec.summary       = %q{Use gcloud for Google Cloud Storage support in CarrierWave.}
  spec.description   = %q{A slimmer alternative to using Fog for Google Cloud Storage support in CarrierWave. Heavily inspired from carrierwave-aws}
  spec.homepage      = "https://github.com/metaware/carrierwave-google-cloud"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'carrierwave', '~> 0.7'
  spec.add_dependency 'gcloud', '~> 0.8.0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "uri-query_params"
end