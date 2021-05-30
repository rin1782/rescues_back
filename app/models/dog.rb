class Dog < ApplicationRecord
    belongs_to :rescue
    validates :name, prescence: true
end
