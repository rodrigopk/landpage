class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :date_started, :date_ended, :period, :current, :description, :company, :company_url
end
