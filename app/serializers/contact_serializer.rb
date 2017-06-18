class ContactSerializer < ActiveModel::Serializer
  attributes :id, :phone, :email, :skype_id, :linkedin_url, :github_url, :twitter
end
