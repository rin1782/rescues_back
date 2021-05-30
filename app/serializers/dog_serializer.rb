class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :img_url, :rescue_id
end
