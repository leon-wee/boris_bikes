require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }

  context '#Initialized docking station contains' do
    it 'an empty bikes array' do
      expect(subject.bikes).to eq([])
    end

    it 'a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  context '#Releases bike' do
    it 'responds to release bike' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'from the bikes array' do
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'fails when the bikes array is empty' do
      expect{ subject.release_bike }.to raise_error('No bikes available')
    end
  end

  context '#Dock bikes' do
    it 'puts a bike in the bikes array' do
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end
  end
end