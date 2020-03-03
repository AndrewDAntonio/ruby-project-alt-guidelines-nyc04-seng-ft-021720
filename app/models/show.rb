class Show < ActiveRecord::Base
    has_many :boxguide
    has_many :services, through: :boxguide

    def streaming_services
        self.services.map{|service| service.name}
    end

    def add_service(service_name)
        Boxguide.new(service_name, self)
    end

    def update_genre(new_genre)
        self.genre = new_genre
    end

end