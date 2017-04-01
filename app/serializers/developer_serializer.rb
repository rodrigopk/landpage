class DeveloperSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthdate, :location, :title, :picture, :pitch
end
