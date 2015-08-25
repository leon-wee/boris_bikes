require 'docking_station'

describe DockingStation do
  it '#Initializes with an empty bikes array' do
    expect(subject.bikes).to eq([])
  end

  context '#Releases bike' do
    it 'responds to release bike' do
      expect(subject).to respond_to(:release_bike)
    end
  end
end