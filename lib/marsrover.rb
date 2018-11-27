require_relative 'navigationinstrument'

class MarsRover
  DEFAULT_POSITION = [0,0]

  def initialize
    @position = DEFAULT_POSITION
    @navigation_instrument = NavigationInstrument.new
  end

  def getPosition
    @position
  end

  def getDirection
    @navigation_instrument.where_are_you_heading?
  end

  def execute_commands(*commands)
    commands.each { |theCommand| run_command(theCommand) }
  end

  def run_command(command)
    # actions = {
    #   :f => lambda { move_forward },
    #   :b => lambda { move_backward },
    #   :l => lambda { turn_left },
    #   :r => lambda { turn_right }
    # }
    # actions[command].call
    move_forward if command == :f
    move_backward if command == :b
    turn_left if command == :l
    turn_right if command == :r
  end

  private

  def move_forward
    @position = [0,1]
  end

  def move_backward
    @position = [0,-1]
  end

  def turn_left
    @navigation_instrument.turn_left
  end

  def turn_right
    @navigation_instrument.turn_right
  end

end
