# frozen_string_literal: true

require 'jruby'
require_relative 'arcball.jar'
Java::MonkstoneArcball::ArcBallLibrary.load(JRuby.runtime)
