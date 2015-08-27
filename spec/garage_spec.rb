require 'van'

describe Garage do
  # let(:van) { double(:van) }
  # let(:bike) { double(:bike) }

  # context '#Collects broken bikes' do
  #   it 'stores vans broken bikes into garage' do
  #     allow(bike).to receive(:broken?) { true }
  #     allow(van).to receive(:load_broken_bike).with(bike)
  #     subject.collects_broken_bikes
  #     expect(garage.bikes).to eq([bike])
  #   end
  # end

  it_behaves_like BikeContainer
end