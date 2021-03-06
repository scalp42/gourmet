# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gourmet/version'

Gem::Specification.new do |spec|
  spec.name          = "gourmet"
  spec.version       = Gourmet::VERSION
  spec.authors       = ["Anthony Scalisi"]
  spec.email         = ["scalisi.a@gmail.com"]
  spec.description   = spec.summary
  spec.summary       = %q{Chef-related gem to help checking the cookbooks versions on your Chef server against upstream}
  spec.homepage      = "https://github.com/scalp42/gourmet"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
