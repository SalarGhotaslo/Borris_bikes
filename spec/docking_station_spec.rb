#This looks for the file called docking_station
  require 'docking_station'
#Describe is what we use to define a class?
  describe DockingStation do
#Use expect for Method - might not need this bit yet but have added in
      it { expect(subject).to respond_to(:release_bike) }
      #gets bike
      it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
      end
      it 'docks something' do
        bike = Bike.new
        # We want to return the bike we dock
        expect(subject.dock(bike)).to eq bike
      end
      it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        # Again, we need to return the bike we just docked
        expect(subject.bike).to eq bike
      end
  end
