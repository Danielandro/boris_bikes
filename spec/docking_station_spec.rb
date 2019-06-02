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

  it 'has a method dock which accepts an argument' do
    station = DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument
  end

  it 'adds bike to station when docking' do
    station = DockingStation.new
    bike = station.release_bike
    station.dock(bike)

    expect(station.bike).to eq(bike)
  end
end
