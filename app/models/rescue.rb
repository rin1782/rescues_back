class Rescue < ApplicationRecord
    has_many :dogs
    validates :name, :location, prescence: true

    
end
