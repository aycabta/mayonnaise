# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mayonnaise/version'

Gem::Specification.new do |spec|
  spec.name          = 'mayonnaise'
  spec.version       = Mayonnaise::VERSION
  spec.authors       = ['aycabta']
  spec.email         = ['aycabta@gmail.com']

  spec.summary       = %q{Optimize terminal rendering.}
  spec.description   = <<-EOD
    Mayonnaise is a dispenser for terminal to optimize rendering.
  EOD
  spec.homepage      = 'https://github.com/aycabta/mayonnaise'
  spec.license       = 'Ruby License'

  spec.files         = Dir['BSDL', 'COPYING', 'README.md', 'lib/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 2.5')

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'yamatanooroti'
  spec.add_development_dependency 'vterm' unless RUBY_PLATFORM =~ /mswin32/i
end
