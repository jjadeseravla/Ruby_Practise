require './lib/marsrover.rb'

describe 'marsrover' do
# subject(:marsrover) { described_class.new }
  ORIGIN = [0,0]
  DIRECTION = :north

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

  it "knows which direction it is facing at the beginning, which is north" do
    expect(mr.direction).to eq(DIRECTION)
  end

  it 'can turn left' do
    mr.receive_commands([:l])
    expect(mr.direction).to eq(:west)
  end

  it 'can change directions' do
    mr.receive_commands([:l, :l])
    expect(mr.direction).to eq(:south)
    mr.receive_commands([:l, :l])
    expect(mr.direction).to eq(:north)
  end

end
