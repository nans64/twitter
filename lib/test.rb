 # ligne très importante qui appelle la gem.
require 'twitter'
require 'dotenv' # Appelle la gem Dotenv

Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

#def login_twitter
	# quelques lignes qui appellent les clés d'API de ton fichier .env
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end

#end

	
#login_twitter.update("Test de twit")
client.update("test de twit2")
