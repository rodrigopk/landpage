class DeveloperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :location, :title, :picture, :pitch
  has_many :skills
  has_many :interests
  has_many :experiences
  has_many :educations
  has_many :contacts
end
