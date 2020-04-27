require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions unless test?
    set :session_secret, "ab12cd"
  end

  get '/' do
    erb :index
  end


  post '/checkout' do
     @item = params[:item]
    # @session = session[:item]
    #  @session << @item
      # binding.pry
    erb :index
  end

end
