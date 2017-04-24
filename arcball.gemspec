# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arcball/version'
Gem::Specification.new do |s|
  s.name = 'arcball'
  s.version = ArcBall::VERSION
  s.licenses = ['GPL-3.0']
  s.has_rdoc = false
  s.extra_rdoc_files = ['README.md', 'LICENSE.md']
  s.authors = ['Martin Prout']
  s.date = %q{2016-03-13}
  s.description = %q{A ArcBall in java for propane}
  s.summary = %q{Provides arcball functionality to processing, from a ruby environment}
  s.email = %q{martin_p@lineone.net}
  s.files = ['Rakefile', 'lib/arcball.rb', 'lib/arcball.jar', 'lib/arcball/version.rb']
  s.homepage = %q{http://rubygems.org/gems/arcball}
  s.require_paths = ['lib']
  s.add_development_dependency 'rake', '~> 12'
  s.platform='java'
  s.rubygems_version = %q{2.5.2}
end
