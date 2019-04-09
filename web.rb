require 'sinatra/base'

module SlackApp
  class Web < Sinatra::Base
    get '/' do
      'Its working!'
    end
  end
end