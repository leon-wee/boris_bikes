require 'bike'

describe Bike do

  context '#Initialized stage' do
    it 'has a status declaring if bike is working' do
      expect(subject.status).to eq(true)
    end
  end

  context '#Methods' do
    it 'can be reported as broken' do
      subject.report_broken
      expect(subject.status).to eq(false)
    end

    context 'when bike is broken' do
      it 'check working returns false' do
        subject.report_broken
        expect(subject.working?).to eq(false)
      end

      it 'check broken returns true' do
        subject.report_broken
        expect(subject.broken?).to eq(true)
      end
    end

    context 'when bike is working' do
      it 'check working returns true' do
        expect(subject.working?).to eq(true)
      end

      it 'check broken returns false' do
        expect(subject.broken?).to eq(false)
      end
    end

  end

end