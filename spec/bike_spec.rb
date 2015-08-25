require 'bike'

describe Bike do

  context '#Initialized stage' do
    it 'has a status declaring if bike is working' do
      expect(subject.status).to eq(true)
    end
  end

  context '#Methods' do
    it 'checks if bike is working' do
      expect(subject.working?).to eq(true)
    end

    it 'can be reported as broken' do
      subject.report_broken
      expect(subject.status).to eq(false)
    end

    it 'checks if is broken' do
      subject.report_broken
      expect(subject.broken?).to eq(true)
    end
  end

end