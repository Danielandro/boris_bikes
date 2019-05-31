require 'bike'

describe Bike do 
  # bike = Bike.new

  # it 'checks Bike class exists' do 
  #   expect(described_class).to eq Bike
  # end

  it { is_expected.to respond_to :working? }
  
end
