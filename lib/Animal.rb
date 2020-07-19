class Animal
    attr_accessor :zoo, :species, :nickname
    attr_reader :weight
    @@all = []

    def initialize(zoo, species, weight, nickname)
        @zoo = zoo
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(arg)
        self.all.map do |a_instance|
            if a_instance.species == arg
                a_instance
            end
        end
    end


end
