require './config/environment'

class CharacterController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/characters" do
    erb :'characters/index'
  end

end