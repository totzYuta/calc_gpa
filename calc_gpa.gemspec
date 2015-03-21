# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calc_gpa/version'

Gem::Specification.new do |spec|
  spec.name          = "calc_gpa"
  spec.version       = CalcGpa::VERSION
  spec.authors       = ["Yuta Totz"]
  spec.email         = ["yuta.totz@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{Gem to calculate your GPA from text file}
  spec.description   = %q{Run app with an argument of text file of your all grades. It can help you to calculate your GPA}
  spec.homepage      = "https://github.com/totzYuta/calc_gpa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
