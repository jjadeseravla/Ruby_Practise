require './lib/marsrover.rb'

describe 'marsrover' do
# subject(:marsrover) { described_class.new }
  ORIGIN = [0,0]

  it 'starts at original position' do
    mr = MarsRover.new
    expect(mr.position).to eq(ORIGIN)
  end

  it 'can move forward' do
    ONE_STEP_NORTH = [0,1]
    mr = MarsRover.new
    mr.receive_commands(:f)
    expect(mr.position).to eq(ONE_STEP_NORTH)
  end

  it 'can move backwards' do
    ONE_STEP_BACKWARD = [1,0]
    mr = MarsRover.new
    mr.receive_commands(:b)
    expect(mr.position).to eq(ONE_STEP_BACKWARD)
  end

end
