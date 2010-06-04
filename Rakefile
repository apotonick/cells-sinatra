# encoding: utf-8
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require File.join(File.dirname(__FILE__), 'lib', 'cells', 'sinatra')


desc 'Default: run unit tests.'
task :default => :test

desc 'Test the cells-sinatra plugin.'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc 'Generate documentation for the cells-sinatra plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Cells Documentation'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('init.rb')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

# rdoc -m "README.rdoc" init.rb lib/ generators/ README.rdoc

# Gem managment tasks.
#
# == Bump gem version (any):
#
#   rake version:bump:major
#   rake version:bump:minor
#   rake version:bump:patch
#
# == Generate gemspec, build & install locally:
#
#   rake gemspec
#   rake build
#   sudo rake install
#
# == Git tag & push to origin/master
#
#   rake release
#
# == Release to Gemcutter.org:
#
#   rake gemcutter:release
#
begin
  gem 'jeweler'
  require 'jeweler'

  Jeweler::Tasks.new do |spec|
    spec.name         = "cells-sinatra"
    spec.version      = ::Cells::Sinatra::VERSION
    spec.summary      = %{View Components for Sinatra.}
    spec.description  = %{Cells are View Components and provide proper encapsulation of logic and rendering.}
    spec.homepage     = "http://cells.rubyforge.org"
    spec.authors      = ["Nick Sutterer"]
    spec.email        = "apotonick@gmail.com"

    spec.files = FileList["[A-Z]*", File.join(*%w[{lib} ** *]).to_s]

    spec.add_dependency 'activesupport', '>= 2.3.0'
    spec.add_dependency 'cells', '>= 3.4.0'
  end

  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler - or one of its dependencies - is not available. " <<
  "Install it with: sudo gem install jeweler -s http://gemcutter.org"
end
