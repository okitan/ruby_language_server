# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_language_server/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_language_server"
  spec.version       = RubyLanguageServer::VERSION
  spec.authors       = ["Kurt Werle"]
  spec.email         = ["kurt@CircleW.org"]

  spec.summary       = %q{A Ruby Language Server for Ruby}
  spec.description   = %q{A Ruby Language Server for Ruby}
  spec.homepage      = "https://github.com/kwerle/ruby_language_server"
  spec.license       = "MIT"

  spec.files         = Dir.glob("**/*").reject {|path| File.directory?(path) || path.start_with?('spec') }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rcodetools"
  spec.add_dependency "rubocop"
  spec.add_dependency "ripper-tags"
  spec.add_dependency "fuzzy_match"
  spec.add_dependency "amatch"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "minitest-color"
  spec.add_development_dependency "pry-byebug"
end
