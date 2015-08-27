require 'van'

describe Van do
  let(:bike) { double(:bike) }

  context '#Initialized' do

  end

  context '#Load broken bikes' do
    it 'will store bikes in van' do
      allow(bike).to receive(:broken?)
      subject.load_bike(bike)
      expect(subject.bikes).to eq([bike])
    end

    it 'will fail if bike is not broken' do
      broken_bike = double(:bike)
      allow(broken_bike).to receive(:broken?) { true }
      expect{ subject.load_bike(broken_bike) }.to raise_error('Please load a broken bike')
    end
  end

  context '#Deliver broken bikes' do
  end


  it_behaves_like BikeContainer
end