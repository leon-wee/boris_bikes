require 'bike'

describe Bike do
  it 'checks if bike is working' do
    expect(subject.working?).to eq(true)
  end
end