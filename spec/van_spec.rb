require 'van'

describe Van do
  let(:broken_bike) { double(:bike) }
  let(:garage) { double(:garage) }

  context '#Loads bikes' do
    it 'will store broken bikes in van to deliver to garage' do
      allow(broken_bike).to receive(:broken?) { true }
      subject.load(broken_bike)
      expect(subject.bikes).to eq([broken_bike])
    end

    it 'will fail if bike is not broken' do
      working_bike = double(:bike)
      allow(working_bike).to receive(:broken?) { false }
      expect{ subject.load(working_bike) }.to raise_error('Sorry, we only deliver broken bikes')
    end
  end

  context '#Unload bikes' do
    it 'van bike capacity should be empty' do
      allow(broken_bike).to receive(:broken?) { true }
      subject.load(broken_bike)
      allow(garage).to receive(:bikes) { [] }
      subject.deliver_broken_bikes_to(garage)
      expect(subject.bikes.length).to eq(0)
    end

    it 'garage container should contain broken bikes' do
      allow(garage).to receive(:bikes) { [] }
      expect(subject.bikes).to receive(:each).and_yield(broken_bike)
      subject.deliver_broken_bikes_to(garage)
    end
  end

  context '#Collects fixed bikes from garage' do
    it 'empties garage bikes' do
      expect(garage).to receive(:emptied)
      subject.collects_fixed_bikes_from(garage)
    end
  end

  it_behaves_like BikeContainer
end