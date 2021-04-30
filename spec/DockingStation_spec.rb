require 'DockingStation'
describe DockingStation do
  
  
  describe '#dock' do
    it 'raises an error when station is full' do
      #Arrange
      station = DockingStation.new
      bike = Bike.new    
      #act
      station.capacity.times { station.dock(bike) }
      #assert
      expect { station.dock(bike) }.to raise_error
    end
    it 'responds with a bike that has been docked' do
      # Arrange
      station = DockingStation.new
      bike = Bike.new
      
      # Act
      station.dock(bike)

      # Assert
      expect(station.bikes).to eq([bike])
    end
  end 
  describe '#release_bike' do
    it 'raises an error when station is empty' do
      #Arrange
      station = DockingStation.new
      #Assert
     
      expect { station.release_bike }.to raise_error 
    end
    it 'if a bike has been docked, then release a bike ' do
      #arrange
      bike = Bike.new
      #act
      subject.dock(bike)
      #assert
      expect(subject.release_bike).to eq bike
    end
  end 
  describe '#initialize' do
   it 'has a default capacity of 20' do 
    station = DockingStation.new
    expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
   end
   it 'saves argument to capacity' do
    station = DockingStation.new(15)
    expect(station.capacity).to eq(15)
   end
  end
end
