module Cells
  # Use this in a Sinatra application.
  #
  #   MyApp < Sinatra::Base
  #     helpers Cells::Sinatra
  #     
  #     get "/" do
  #       render_cell(:post, :top10)
  #     end
  module Sinatra
    VERSION = 1.0
    
    def render_cell(name, state, opts={})
      ::Cell::Base.render_cell_for(self, name, state, opts)
    end
  end
end