require './lib/marsrover.rb'

describe 'marsrover' do
  it 'starts at 0,0' do
    mr = MarsRover.new
    expect(mr.position).to eq([0,0])
  end

  it 'can move forward' do
    mr = MarsRover.new
    mr.receive_commands('f')
    expect(mr.position).to eq([0,1])
  end
end
