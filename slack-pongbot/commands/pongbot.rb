require 'dotenv'
require 'slack-ruby-bot'
require 'xbox-api'
require 'json'
require 'pry'

		class FortniteBot < SlackRubyBot::Commands::Base

			client = XboxApi::Client.new(ENV[:XBOX_API_KEY])
			drew = XboxApi::Gamer.new("endersname", client, "2535463885818470")
			alec = XboxApi::Gamer.new("oldswirlybeard", client, "2535409892406807")
			ben = XboxApi::Gamer.new("RangerBenN", client, "2535424575144632")
			isaac = XboxApi::Gamer.new("spartacuswayne", client, "2535411728056037")
			caleb = XboxApi::Gamer.new("CMcQuackles", client, "2535449069700480")
			
			# names = []
			# names1 = []
			# names.push(alec, ben, caleb, drew, isaac)
			
			
			# names.each { |i|
			# 	res = i.presence
			# 	names1.push(res)
			# 	res.each { |x|
			# 		gen = JSON.generate(x)
			# 	}
			
			# }
			
			# names.each do |i|
			# 	res = i.presence
			# 	res.each do |x|
			# 		gen = JSON.generate(x)
			# 		# gen.each do |y|
			# 		# 	online = JSON.parse(y)
			# 		 online = JSON.parse(gen)
			# 		 puts onlinestate
			# 		end
			# 	end
			
					# res = [alec.presence, ben.presence, caleb.presence, drew.presence, isaac.presence]
					# gen = JSON.generate(res)
					# online = JSON.parse(gen)
			
					# puts gen["state"]
			
			
			
			
			
				command 'ping' do |client, data, match|
			
					res = alec.presence
					res1 = ben.presence
					res2 = caleb.presence
					res3 = drew.presence
					res4 = isaac.presence
					gen = JSON.generate(res)
					gen1 = JSON.generate(res1)
					gen2 = JSON.generate(res2)
					gen3 = JSON.generate(res3)
					gen4 = JSON.generate(res4)
					online = JSON.parse(gen)
					online1 = JSON.parse(gen1)
					online2 = JSON.parse(gen2)
					online3 = JSON.parse(gen3)
					online4 = JSON.parse(gen4)
					if online["state"] == "Online"
						if online["devices"][0]["titles"][0]["name"] == "Fortnite"
							activity = "He's playing Fortnite!"
						else activity = "He's doing something other than Fortnite"
						end
					else activity = nil
					end
					if online1["state"] == "Online"
						if online1["devices"][0]["titles"][0]["name"] == "Fortnite"
							activity1 = "He's playing Fortnite!"
						else activity1 = "He's doing something other than Fortnite"
						end
					else activity = nil
					end
					if online2["state"] == "Online"
						if online2["devices"][0]["titles"][0]["name"] == "Fortnite"
							activity2 = "He's playing Fortnite!"
						else activity2 = "He's doing something other than Fortnite"
						end
					else activity = nil
					end
					if online3["state"] == "Online"
						if online3["devices"][0]["titles"][0]["name"] == "Fortnite"
							activity3 = "He's playing Fortnite!"
						else activity3 = "He's doing something other than Fortnite"
						end
					else activity = nil
					end
					if online4["state"] == "Online"
						if online4["devices"][0]["titles"][0]["name"] == "Fortnite"
							activity4 = "He's playing Fortnite!"
						else activity4 = "He's doing something other than Fortnite"
						end
					else activity = nil
					end
					client.say(channel: data.channel, text: "Alec is #{online["state"]}; #{activity}\nBen is #{online1["state"]}; #{activity1}\nCaleb is #{online2["state"]}; #{activity2}\nDrew is #{online3["state"]}; #{activity3}\nIsaac is #{online4["state"]}; #{activity4}\n")
				end
			end
			Pongbot.run
			