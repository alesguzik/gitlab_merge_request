# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitlab_merge_request/version'

Gem::Specification.new do |spec|
  spec.name          = "gitlab_merge_request"
  spec.version       = GitlabMergeRequest::VERSION
  spec.authors       = ["Ales Guzik"]
  spec.email         = ["me@aguzik.net"]
  spec.summary       = %q{Make GitLab merge request}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gitlab", ">= 3.2.0"
  spec.add_dependency "awesome_print", ">= 1.2.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
