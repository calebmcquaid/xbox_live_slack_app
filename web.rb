require 'sinatra/base'

module SlackPongbot
  class Web < Sinatra::Base
    get '/' do
      'Its working!'
    end
  end
end