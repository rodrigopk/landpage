class DeveloperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :title, :picture, :pitch
end
