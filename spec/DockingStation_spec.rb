require 'DockingStation'
describe DockingStation do
  
  
  describe '#dock' do
    it 'raises an error when station is full' do
      #Arrange
      station = DockingStation.new
      bike = Bike.new    
      #act
      20.times { station.dock(bike) }
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
end