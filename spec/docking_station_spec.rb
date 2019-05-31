require 'docking_station'

describe DockingStation do
  station = DockingStation.new

  it 'is available as described class' do
    expect(described_class).to eq(DockingStation)
  end

  it { should respond_to :release_bike }

  it 'gets a bike and the bike is working' do 
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end


  # it 'returns a bike instance when #release_bike is called' do
  #   expect(station.release_bike).to be_instance_of(Bike)
  # end

end
