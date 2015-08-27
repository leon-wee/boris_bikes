require 'van'

describe Garage do
  # let(:van) { double(:van) }
  let(:broken_bike) { double(:bike) }

  context '#Collects broken bikes' do
    it 'fixes broken bikes' do
      allow(broken_bike).to receive(:broken?) { true }
      subject.add_bike(broken_bike)
      expect(broken_bike).to receive(:fix)
      subject.fix_bikes
    end
  end

  context '#Emptied' do
    it 'empties the garage container' do
      subject.add_bike(broken_bike)
      allow(broken_bike).to receive(:fix)
      subject.fix_bikes
      subject.emptied
      expect(subject.bikes.length).to eq(0)
    end
  end

  it_behaves_like BikeContainer
end