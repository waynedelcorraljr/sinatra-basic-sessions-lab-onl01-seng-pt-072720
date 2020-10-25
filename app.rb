require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "lucca"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @cart_contents = session[:item]
        erb :checkout
    end

end