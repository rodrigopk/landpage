class DeveloperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :title, :picture, :pitch
  has_many :skills
  has_many :interests
  has_many :experiences
end
