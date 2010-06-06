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
    
    # Renders a cell state.
    #
    # Example:
    #
    #   render_cell(:post, :top10)
    #
    # would render the state +top10+ of the +PostCell+.
    def render_cell(name, state, opts={})
      ::Cell::Sinatra.render_cell_for(self, name, state, opts)
    end
  end
end