require 'sinatra/base'
require './lib/Player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  post '/names' do
    $player_1 = Player.new(params[:p1name])
    $player_2 = Player.new(params[:p2name])
    redirect '/play'
  end
  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
