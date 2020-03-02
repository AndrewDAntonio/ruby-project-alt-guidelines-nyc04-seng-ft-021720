class Service < ActiveRecord::Base
    has_many :boxguide
    has_many :shows, through: :boxguide

end