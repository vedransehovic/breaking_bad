require './config/environment'

class CharacterController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/characters" do
    @characters = Character.all
    erb :'characters/index'
  end

  get '/characters/:id' do
    id=params[:id]
    @character = Character.find_by_id(id)  
    @quotes = Quote.where(author: @character.name)
    #view
    erb :'characters/show'
  end

end