class MarsRover
  DEFAULT_POSITION = [0,0]
  DEFAULT_DIRECTION = 0
  COMPASS_DIRECTIONS = [:north, :west, :south, :east]

  def initialize
    @position = DEFAULT_POSITION
    @direction = DEFAULT_DIRECTION
  end

  def position
    @position
  end

  def direction
    COMPASS_DIRECTIONS[@direction]
  end

  def receive_commands(*commands)
    @position = [0,1]
    @position = [0,-1] if commands.first == :b
    commands.each do |theCommand|
      turn_left if theCommand == :l
    end
  end

  private

  def turn_left
    @direction += 1 % (COMPASS_DIRECTIONS.size)
  end

end
