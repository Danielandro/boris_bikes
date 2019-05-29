require 'bike'

describe Bike do 
  bike = Bike.new

  it  'it is available as described class' do 
    expect(described_class).to eq Bike
  end

  it { should respond_to :working? }

  it 'should return true when #working? is called' do
    expect(bike.working?).to eq true
  end
  
end