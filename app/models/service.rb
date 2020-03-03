class Service < ActiveRecord::Base
    has_many :boxguides
    has_many :shows, through: :boxguides

    def shows
        self.shows.map{|show| show.name}
    end

    def genre_count(genre_type)
        self.shows.where(genre: genre_type).length
    end

    def shows_by_genre(genre_type)
        shows = self.shows.where(genre: genre_type)
        shows.map{|show| show.name}
    end

end