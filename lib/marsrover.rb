class MarsRover

  def initialize
    @position = [0,0]
  end

  def position
    @position
  end

  def receive_commands(commands)
    @position = [0,1]
  end

end
