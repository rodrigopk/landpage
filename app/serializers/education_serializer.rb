class EducationSerializer < ActiveModel::Serializer
  attributes :id, :institution, :start_date, :period, :end_date, :graduated, :title, :field
end
