class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3    
    # p "Hi #{name}!"
  end
end