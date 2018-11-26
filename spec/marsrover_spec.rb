require './lib/marsrover.rb'

describe 'marsrover' do
# subject(:marsrover) { described_class.new }
  ORIGIN = [0,0]
  DIRECTION = :north

  context 'Rover has just landed on grid on Mars' do
    let(:mr) { MarsRover.new }

    it 'starts at original position' do
      expect(mr.position).to eq(ORIGIN)
    end

    it 'can move forward' do
      ONE_STEP_NORTH = [0,1]
      mr.receive_commands([:f])
      expect(mr.position).to eq(ONE_STEP_NORTH)
    end

    it 'can move backwards' do
      ONE_STEP_SOUTH = [0,-1]
      mr.receive_commands([:b])
      expect(mr.position).to eq(ONE_STEP_SOUTH)
    end

    it "knows it is facing north at the beginning" do
      expect(mr.direction).to eq(DIRECTION)
    end

    it 'can turn left' do
      mr.receive_commands([:l])
      expect(mr.direction).to eq(:west)
    end

    it 'can do a 180' do
      mr.receive_commands([:l, :l])
      expect(mr.direction).to eq(:south)
    end

    it 'can do a 360' do
      mr.receive_commands([:l, :l, :l, :l])
      expect(mr.direction).to eq(:north)
    end

  end
end
