require 'docking_station'

describe DockingStation do 
  it 'is available as described class' do 
    expect(described_class).to eq(DockingStation)
  end

  it { should respond_to :release_bike }
  
end