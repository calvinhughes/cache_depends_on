# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cache_depends_on/version'

Gem::Specification.new do |spec|
  spec.name          = 'cache_depends_on'
  spec.version       = CacheDependsOn::VERSION
  spec.authors       = ['Daniel Vartanov']
  spec.email         = ['dan@vartanov.net']

  spec.summary       = %q{A better way of controlling cache dependencies than 'belongs_to :product, touch: true'}
  spec.description   = %q{A better way of controlling cache dependencies than 'belongs_to :product, touch: true'}
  spec.homepage      = 'https://github.com/veeqo/cache_depends_on'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '> 3', '< 6'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'pry-byebug'
end
