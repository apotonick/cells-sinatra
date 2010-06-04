require 'rubygems'

require 'active_support'

gem 'cells', '= 3.4.0'
require 'cells'
require 'cell/abstract_base'  ### FIXME: let cells handle that!

require 'sinatra/base'
require 'cells/sinatra'
require 'cell/sinatra'