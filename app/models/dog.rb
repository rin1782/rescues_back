class Dog < ApplicationRecord
    belongs_to :rescue
    validates :name, presence: true
end
