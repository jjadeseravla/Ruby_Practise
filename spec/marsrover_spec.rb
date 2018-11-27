require './lib/marsrover.rb'

describe 'marsrover' do
  ORIGIN = [0,0]
  DIRECTION = :north

  context 'Rover has just landed on grid on Mars' do
    let(:mr) { MarsRover.new }

    it 'starts at original position' do
      expect(mr.getPosition).to eq(ORIGIN)
    end

    it 'can move forward' do
      ONE_STEP_NORTH = [0,1]
      mr.execute_commands(:f)
      expect(mr.getPosition).to eq(ONE_STEP_NORTH)
    end

    it 'can move backwards' do
      ONE_STEP_SOUTH = [0,-1]
      mr.execute_commands(:b)
      expect(mr.getPosition).to eq(ONE_STEP_SOUTH)
    end

    it "knows it is facing north at the beginning" do
      expect(mr.getDirection).to eq(DIRECTION)
    end

    it 'can turn left' do
      mr.execute_commands(:l)
      expect(mr.getDirection).to eq(:west)
    end

    it 'can turn right' do
      mr.execute_commands(:r)
      expect(mr.getDirection).to eq(:east)
    end

    it 'can do a 180' do
      mr.execute_commands(:l, :l)
      expect(mr.getDirection).to eq(:south)
    end

    it 'can do a 360 to the anticlockwise' do
      mr.execute_commands(:l, :l, :l, :l)
      expect(mr.getDirection).to eq(:north)
    end

    it 'can do a 360 clockwise' do
      mr.execute_commands(:r, :r, :r, :r)
      expect(mr.getDirection).to eq(:north)
    end

  end
end
