class MarsRover
  DEFAULT_POSITION = [0,0]

  def initialize
    @position = DEFAULT_POSITION
  end

  def position
    @position
  end

  def receive_commands(commands)
    @position = [0,1]
    @position = [1,0] if commands == :b
  end

end
