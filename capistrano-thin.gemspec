# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-thin"
  spec.version       = "1.2.0"
  spec.authors       = ["Alessandro Lepore"]
  spec.email         = ["a.lepore@freegoweb.it"]
  spec.summary       = %q{Thin tasks for Capistrano 3.x}
  spec.description   = %q{Thin tasks for Capistrano 3.x}
  spec.homepage      = "https://github.com/freego/capistrano-thin"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = []
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.0"
  spec.add_dependency "thin", "~> 1.6"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
