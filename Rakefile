# frozen_string_literal: false

require_relative 'lib/arcball/version'

task default: %i[compile install gem]

desc 'Build gem'
task :gem do
  system 'gem build arcball.gemspec'
end

desc 'Install'
task :install do
  system 'mv target/arcball.jar lib'
end

desc 'Document'
task :javadoc do
  system './mvnw javadoc:javadoc'
end

desc 'Compile'
task :compile do
  system './mvnw package'
end

desc 'clean'
task :clean do
  Dir['./**/*.%w{jar gem}'].each do |path|
    puts "Deleting #{path} ..."
    File.delete(path)
  end
  FileUtils.rm_rf('./target')
end
