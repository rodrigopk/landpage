class SkillSerializer < ActiveModel::Serializer
  attributes :id, :title, :experience, :image, :description
end
