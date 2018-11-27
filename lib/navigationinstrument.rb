# require_relative 'marsrover'

class NavigationInstrument
  DEFAULT_DIRECTION = 0
  COMPASS_DIRECTIONS = [:north, :east, :south, :west]
  LEFT = -1
  RIGHT = 1
  # attr_reader :direction

  def initialize #(direction)
    @direction = DEFAULT_DIRECTION
  end

  def where_are_you_heading?
    COMPASS_DIRECTIONS[@direction]
  end

  def turn_left
    turn(LEFT)
    # % (COMPASS_DIRECTIONS.size)
  end

  def turn_right
    turn(RIGHT)
  end

  private

  def turn(side)
    @direction += side
  end

end
