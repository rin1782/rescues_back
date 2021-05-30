class RescueSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :dogs
end
