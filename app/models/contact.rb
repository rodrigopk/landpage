class Contact < ApplicationRecord
  belongs_to :developer

  validates :phone, presence: true, format: { with: /\A[0-9]*\z/ }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :skype_id, presence: true


end
