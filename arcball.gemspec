# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arcball/version'
Gem::Specification.new do |s|
  s.name = 'arcball'
  s.version = ArcBall::VERSION
  s.licenses = ['GPL-3.0']
  s.authors = ['Martin Prout']
  s.date = %q{2020-04-09}
  s.description = %q{A ArcBall in java for propane and PiCrate}
  s.summary = %q{Provides arcball functionality to processing, from a ruby environment}
  s.email = %q{mamba2928@yahoo.co.uk}
  s.files = ['Rakefile', 'lib/arcball.rb', 'lib/arcball.jar', 'lib/arcball/version.rb']
  s.homepage = %q{http://rubygems.org/gems/arcball}
  s.require_paths = ['lib']
  s.add_development_dependency 'rake', '~> 12.3'
  s.platform      = 'java'
  s.requirements << 'java runtime == 8'
end
