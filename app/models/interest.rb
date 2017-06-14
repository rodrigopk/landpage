class Interest < ApplicationRecord

	belongs_to :developer

  has_attached_file :image, styles: { medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
end
