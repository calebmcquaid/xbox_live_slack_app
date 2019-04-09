require 'sinatra/base'

module SlackPongbot
  class Web < Sinatra::Base
    get '/' do
      'Math is good for you.'
    end
  end
end