class Developer < ApplicationRecord

  has_attached_file :picture, styles: { medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :birthdate, presence: true
  validates :title, presence: true
end
