# encoding: utf-8
# frozen_string_literal: false
$VERBOSE = nil
working_directory = File.join(File.dirname(__FILE__))
$LOAD_PATH << working_directory unless $LOAD_PATH.include?(working_directory)
Dir[File.join(working_directory, '*.jar')].each do |jar|
  require jar
end

require 'propane/version'
require 'propane/simple_app'
require 'propane/helpers/numeric'