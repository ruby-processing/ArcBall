require 'fileutils'
project 'arcball', 'https://github.com/ruby-processing/ArcBall' do
  model_version '4.0.0'
  id 'arcball:arcball', '0.0.1'
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
    'maven.compiler.source' => '1.7',
    'project.build.sourceEncoding' => 'utf-8',
    'maven.compiler.target' => '1.7',
    'jruby.api' => 'http://jruby.org/apidocs/',
    'processing.api' => 'http://processing.github.io/processing-javadocs/core/',
    'jruby.api' => 'http://jruby.org/apidocs/',
    )
  
  pom('org.jruby:jruby:9.0.5.0')
  jar('org.processing:core:2.2.1')
  
  plugin_management do
    plugin :resources, '2.6'
    plugin :dependency, '2.10'
      
    plugin( :compiler, '3.3',
      source: '${maven.compiler.source}',
      target: '${maven.compiler.target}'
    )
    plugin( :javadoc, '2.10.3',
      detect_offline_links:  'false',
      links: ['${jruby.api}', '${processing.api}']
    )
    plugin( :jar, '2.6',
      archive: { manifestFile: 'MANIFEST.MF' }
    )
  end

  build do
    default_goal 'package'
    source_directory 'src'
    final_name 'arcball'
  end
end