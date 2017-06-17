class Skill < ApplicationRecord

	belongs_to :developer

  has_attached_file :image, 
                    :storage => :cloudinary,
                    :path => ':id/:style/:filename',
                    styles: { medium: "300x300>" }, 
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :experience, presence: true
  
end
