require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
    "Testing infrastructure working!!!!!!!!Nice"
  end

end
