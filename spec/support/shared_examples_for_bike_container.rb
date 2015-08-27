shared_examples_for BikeContainer do
  let(:bike) { double :bike }

  context '#Initialized stage' do
    it 'has a default capacity when initialized' do
      expect(subject.capacity).to eq(BikeContainer::DEFAULT_CAPACITY)
    end

    it 'can also be overridden' do
      random_capacity = rand(100)
      subject = described_class.new(random_capacity)
      expect(subject.capacity).to eq(random_capacity)
    end
  end

  context '#Add bikes' do
    it 'receives a bike' do
      subject.add_bike(bike)
      expect(subject).not_to be_empty
    end

    it 'raises an error when full' do
      subject = described_class.new(10)
      10.times { subject.add_bike(bike) }
      expect{ subject.add_bike(bike) }.to raise_error("#{described_class.name} is full")
    end
  end

  context '#Removes bike' do
    before(:each) { subject.add_bike(bike) }

    it 'returns a bike' do
      expect(subject.remove_bike).to eq(bike)
    end

    it 'removes bikes from the collection' do
      subject.remove_bike
      expect(subject).to be_empty
    end

    it 'raises an error when empty' do
      subject.remove_bike
      expect{ subject.remove_bike }.to raise_error("#{described_class.name} is already empty")
    end
  end

end