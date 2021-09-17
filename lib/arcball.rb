# frozen_string_literal: true

require 'jruby'
require 'arcball.jar'
java_import 'monkstone.arcball.ArcBallLibrary'
ArcBallLibrary.load(JRuby.runtime)
