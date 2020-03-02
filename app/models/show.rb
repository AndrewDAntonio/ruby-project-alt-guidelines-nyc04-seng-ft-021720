class Show < ActiveRecord::Base
    has_many :boxguide
    has_many :services, through: :boxguide

end