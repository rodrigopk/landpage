class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :date_started, :date_ended, :current, :description, :company, :company_url
end
