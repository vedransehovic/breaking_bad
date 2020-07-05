require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "3dTkHgavA0Xho36A68Zx"
  end

  get "/" do
    erb :welcome
  end

end
