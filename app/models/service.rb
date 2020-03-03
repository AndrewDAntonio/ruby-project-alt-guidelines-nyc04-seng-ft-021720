class Service < ActiveRecord::Base
    has_many :boxguide
    has_many :shows, through: :boxguide

    def shows
        self.shows
    end

    def self.create(instance_name,name)
        instance_name = Service.new(name)
    end

    def delete
        self.destroy
    end

    def genre_count(genre_type)
        self.shows.where(genre: genre_type).length
    end

    def shows_by_genre(genre_type)
        shows = self.shows.where(genre: genre_type)
        shows.map{|show| show.name}
    end



end