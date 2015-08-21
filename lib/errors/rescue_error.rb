module Errors
  module RescueError
    def self.included base
      base.rescue_from Errors::NotFound do |e|
        render 'errors/404', :status => 404
      end
    end
  end
end
