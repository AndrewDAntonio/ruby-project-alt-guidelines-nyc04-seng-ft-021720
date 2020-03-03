class Show < ActiveRecord::Base
    has_many :boxguides
    has_many :services, through: :boxguides

    def streaming_services
        self.services.map{|service| service.name}
    end

    def add_service(service_name)
        Boxguide.new(service_name, self)
    end

    def update_genre(new_genre)
        self.genre = new_genre
    end

    def self.find_like(show_search)
        show = Show.find_by("name like ?", show_search)
        show.streaming_services
    end
end