require './lib/marsrover.rb'

describe 'marsrover' do
  it 'starts at 0,0' do
    mr = MarsRover.new
    expect(mr.position).to eq([0,0])
  end
end
