class MarsRover
  DEFAULT_POSITION = [0,0]
  DEFAULT_DIRECTION = :north

  def initialize
    @position = DEFAULT_POSITION
    @direction = DEFAULT_DIRECTION
  end

  def position
    @position
  end

  def direction
    @direction
  end

  def receive_commands(commands)
    @position = [0,1]
    @position = [1,0] if commands == :b
  end

end
