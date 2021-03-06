# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "case_transform2/version"

Gem::Specification.new do |s|
  s.name        = "case_transform2"
  s.version     = CaseTransform2::VERSION
  s.license     = "MIT"
  s.authors     = ["L. Preston Sego III", "Ben Mills", "Saiqul Haq"]
  s.email       = "saiqulhaq@gmail.com"
  s.homepage    = "https://github.com/saiqulhaq/case_transform"
  s.summary     = "Transforms string letter case to camel, snake, dash and underscore without activesupport dependencies"
  s.description = s.summary + ". Forked from https://github.com/rails-api/case_transform"
  s.metadata["yard.run"] = "yri"
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_path = ["lib"]

  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "pry", "~> 0.10.4"
  s.add_development_dependency "rake", "~> 11.2.2"
  s.add_development_dependency "rspec", "~> 3.7.0"
  s.add_development_dependency "simplecov", "~> 0.16.1"
end
