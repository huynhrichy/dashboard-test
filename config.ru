require 'dashing'
require 'dotenv'
Dotenv.load

configure do
  set :auth_token, 'dai0fj02e8f1fa'

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application