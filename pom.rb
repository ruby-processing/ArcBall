# frozen_string_literal: true

require 'fileutils'

project 'arcball', 'https://github.com/ruby-processing/ArcBall' do
  model_version '4.0.0'
  id 'arcball:arcball', '1.0.2'
  packaging 'jar'
  description 'arcball for arcball'
  organization 'ruby-processing', 'https://ruby-processing.github.io'
  { 'monkstone' => 'Martin Prout' }.each do |key, value|
    developer key do
      name value
      roles 'developer'
    end
  end

  issue_management 'https://github.com/monkstone/arcball/issues', 'Github'

  source_control(
    url: 'https://github.com/ruby-processing/ArcBall',
    connection: 'scm:git:git://github.com/ruby-processing/ArcBall',
    developer_connection: 'scm:git:git@github.com/ruby-processing/ArcBall.git'
  )

  properties('source.directory' => 'src',
             'arcball.basedir' => '${project.basedir}',
             'polyglot.dump.pom' => 'pom.xml',
             'maven.compiler.source' => '1.8',
             'project.build.sourceEncoding' => 'utf-8',
             'maven.compiler.target' => '1.8',
             'jruby.api' => 'http://jruby.org/apidocs/',
             'processing.api' => 'http://processing.github.io/processing-javadocs/core/')

  pom('org.jruby:jruby:9.2.11.1')
  jar('org.processing:core:3.3.7')

  overrides do
    plugin :dependency, '3.1.2'
    plugin(:compiler, '3.8.1',
           source: '${maven.compiler.source}',
           target: '${maven.compiler.target}')
    plugin(:javadoc, '2.10.4',
           'detectOfflineLinks' => 'false',
           'links' => ['${processing.api}',
                       '${jruby.api}'])
    plugin(:jar, '3.2.0',
           archive: { manifestFile: 'MANIFEST.MF' })
  end

  build do
    default_goal 'package'
    source_directory 'src'
    final_name 'arcball'
  end
end
