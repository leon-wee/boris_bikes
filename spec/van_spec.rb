require 'van'

describe Van do
  let(:bike) { double(:bike) }
  let(:garage) { double(:garage) }

  context '#Loads bikes' do
    it 'will store broken bikes in van to deliver to garage' do
      allow(bike).to receive(:broken?) { true }
      subject.load_broken_bike(bike)
      expect(subject.bikes).to eq([bike])
    end

    it 'will fail if bike is not broken' do
      broken_bike = double(:bike)
      allow(broken_bike).to receive(:broken?) { false }
      expect{ subject.load_broken_bike(broken_bike) }.to raise_error('Please load a broken bike')
    end
  end

  context '#Unload bikes' do
    it 'van bike capacity should be empty' do
      allow(garage).to receive(:collects_broken_bikes)
      subject.deliver_broken_bikes(garage)
      expect(subject.bikes).to eq([])
    end

    it 'garage container should contain broken bikes' do
      # allow(bike).to receive(:broken?) { true }
      # subject.load_broken_bike(bike)
      # allow(garage).to receive(:bikes) { [] }
      expect(garage).to receive(:collects_broken_bikes)
      subject.deliver_broken_bikes(garage)
    end
  end


  it_behaves_like BikeContainer
end