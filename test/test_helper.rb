# encoding: utf-8
require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'active_support/test_case'

require 'cells-sinatra'

Cell::Sinatra.views = File.join(File.dirname(__FILE__), 'cells')

require File.join(File.dirname(__FILE__), %w(cells singer_cell))
require File.join(File.dirname(__FILE__), %w(cells background_singer_cell))