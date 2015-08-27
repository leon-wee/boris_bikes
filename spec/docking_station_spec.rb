require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do
  let(:bike) { double :bike }
  subject { described_class.new(20) }

  context '#Initialized docking station contains' do
    it 'an empty bikes array' do
      expect(subject.bikes).to eq([])
    end

    it 'capacity that can be changed' do
      expect(subject).to respond_to(:capacity=)
    end
  end

  context '#Releases bike' do
    it 'responds to release bike' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'from the bikes array' do
      subject.dock(bike)
      allow(bike).to receive(:broken?)
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

    it 'should fail it if exceeds docking capacity' do
      20.times { subject.dock(bike) }
      expect{ subject.dock(bike) }.to raise_error('DockingStation is full')
    end
  end


  it_behaves_like BikeContainer
end