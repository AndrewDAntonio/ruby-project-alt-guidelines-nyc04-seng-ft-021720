class Show < ActiveRecord::Base
    has_many :boxguide
    has_many :services, through: :boxguide

    def streaming_services
        self.services
    end

    def self.create(name, genre)
        downcase_genre = genre.downcase
        Show.new(name, downcase_genre)
    end

    def add_service(service_name)
        BoxGuide.new(service_name, self)
    end

    def update_genre(new_genre)
        self.genre = new_genre
    end

end