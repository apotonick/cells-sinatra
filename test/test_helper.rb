# encoding: utf-8
require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'active_support/test_case'

require 'cells-sinatra'

Cell::Sinatra.views = File.join(File.dirname(__FILE__), 'cells')

require File.join(File.dirname(__FILE__), %w(cells singer_cell))
require File.join(File.dirname(__FILE__), %w(cells background_singer_cell))

class ActiveSupport::TestCase
  def cell(name, opts={})
    ::Cell::Sinatra.create_cell_for(@controller, name, opts)
  end
  
  def render_cell(name, state, opts={})  ### FIXME.
    cell(name, opts).render_state(state)
  end
end