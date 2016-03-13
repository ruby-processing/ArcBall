# encoding: utf-8
# frozen_string_literal: false
require 'java'
require_relative 'arcball.jar'
Java::MonkstoneArcball::ArcBallLibrary.load(JRuby.runtime)
