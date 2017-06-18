class EducationSerializer < ActiveModel::Serializer
  attributes :id, :institution, :institution_url, :start_date, :period, :end_date, :graduated, :title, :field
end
