class EducationSerializer < ActiveModel::Serializer
  attributes :id, :institution, :start_date, :end_date, :graduated, :title, :field
end
