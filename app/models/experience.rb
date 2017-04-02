class Experience < ApplicationRecord

  validates :title, presence: true
  validates :date_started, presence: true
  validates :company, presence: true

end
