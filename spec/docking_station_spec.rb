require 'docking_station'

describe DockingStation do 
  station = DockingStation.new

  it 'is available as described class' do 
    expect(described_class).to eq(DockingStation)
  end

  it { should respond_to :release_bike }
  
  it 'returns a bike instance when #release_bike is called' do    
    expect(station.release_bike).to be_instance_of(Bike)
  end
end