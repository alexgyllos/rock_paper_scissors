require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get "/scissors" do
  erb(:scissors)
end

get "/rock" do
  erb(:rock)
end

get "/paper" do
  erb(:paper)
end

get "/:scissors/:rock" do
  player1 = params['scissors'].to_s
  player2 = params['rock'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:scissors/:paper" do
  player1 = params['scissors'].to_s
  player2 = params['paper'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:scissors/:scissors2" do
  player1 = params['scissors'].to_s
  player2 = params['scissors2'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:rock/:paper" do
  player1 = params['rock'].to_s
  player2 = params['paper'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:rock/:scissors" do
  player1 = params['rock'].to_s
  player2 = params['scissors'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:rock/:rock2" do
  player1 = params['rock'].to_s
  player2 = params['rock2'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:paper/:rock" do
  player1 = params['paper'].to_s
  player2 = params['rock'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:paper/:scissors" do
  player1 = params['paper'].to_s
  player2 = params['scissors'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end

get "/:paper/:paper2" do
  player1 = params['paper'].to_s
  player2 = params['paper2'].to_s
  @result = RockPaperScissors.game(player1, player2)
  erb(:result)
end
