require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  get '/' do
    @session[:item] = params[item]
    erb :checkout
  end

end
