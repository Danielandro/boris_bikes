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

  it 'docking station should store a bike instance as attribute reader' do
    bike = station.release_bike
    expect(station.dock(bike)).to include(be_instance_of(Bike))
  end

  it 'return the stored bikes when attribute get called' do
    expect(station.docked_bike).to include(be_instance_of(Bike))
  end

end