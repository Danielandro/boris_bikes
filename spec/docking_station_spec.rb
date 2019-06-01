require 'docking_station'

describe DockingStation do
  
  it 'is available as described class' do
    expect(described_class).to eq(DockingStation)
  end

  it { should respond_to :release_bike }

  it 'gets a bike and the bike is working' do 
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end 

  it 'has a method dock' do
    station = DockingStation.new
    expect(station).to respond_to(:dock)
  end
end
