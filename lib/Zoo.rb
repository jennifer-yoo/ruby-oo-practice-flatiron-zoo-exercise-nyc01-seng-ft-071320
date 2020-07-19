class Zoo
    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        array = []
        Animal.all.each do |a_instance| 
            if a_instance.zoo == self
                array << a_instance
            end
        end
        array
    end

    def animal_species
        uniq_array = self.animals.map {
            |a_instance| a_instance.species
        }
        uniq_array.uniq
    end

    def find_by_species(animal_species)
        self.animals.select {
            |a_instance| a_instance.species == animal_species
        }
    end

    def animal_nicknames
        self.animals.map {
            |a_instance| a_instance.nickname
        }
    end

    def self.find_by_location(location_arg)
        self.all.select {
            |l_instance| l_instance.location == location_arg
        }
    end


end
