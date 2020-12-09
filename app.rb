require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1_name = params[:Player1]
    @player2_name = params[:Player2]
    erb(:play)
  end
end
