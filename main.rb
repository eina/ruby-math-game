require './player'
require './question'
require './game'

game = Game.new

while game.active
  game.start_game
end