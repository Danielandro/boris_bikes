require 'bike'

describe Bike do 
  it  'it is available as described class' do 
    expect(described_class).to eq Bike
  end

  it { should respond_to :working? }
  
end