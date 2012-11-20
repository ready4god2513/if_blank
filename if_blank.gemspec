# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'if_blank/version'

Gem::Specification.new do |gem|
  gem.name          = "if_blank"
  gem.version       = IfBlank::VERSION
  gem.authors       = ["Brandon Hansen"]
  gem.email         = ["brandonh@ibethel.org"]
  gem.description   = %q{If a string is empty return the passed in parameter (or block if given)}
  gem.summary       = %q{If a string is empty return the passed in parameter (or block if given)}
  gem.homepage      = "https://github.com/ready4god2513/if_blank"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
