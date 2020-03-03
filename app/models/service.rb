class Service < ActiveRecord::Base
    has_many :boxguide
    has_many :shows, through: :boxguide

    def shows
        self.shows
    end

    def genre_count(genre_type)
        self.shows.where(genre: genre_type).length
    end

    def shows_by_genre(genre_type)
        shows = self.shows.where(genre: genre_type)
        shows.map{|show| show.name}
    end



end