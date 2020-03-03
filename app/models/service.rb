class Service < ActiveRecord::Base
    has_many :boxguides
    has_many :shows, through: :boxguides

    def genre_count(genre_type)
        self.shows.where("genre like ?", genre_type).length
    end

    def shows_by_genre(genre_type)
        shows = self.shows.where("genre like ?", genre_type)
        puts shows.map{|show| show.name}
    end

end