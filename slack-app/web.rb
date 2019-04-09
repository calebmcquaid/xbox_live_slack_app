require 'sinatra/base'

module SlackAppbot
	class Web < Sinatra::Base
		get '/' do
			'Bot is running...'
		end
	end
end
