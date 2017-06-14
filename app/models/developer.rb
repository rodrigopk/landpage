class Developer < ApplicationRecord

  has_many :experiences

  has_attached_file :picture, styles: { medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :birthdate, presence: true
  validates :title, presence: true

  def age
    years_completed = Date.today.year - self.birthdate.year

    unless reached_anniversary_in_year_of(self.birthdate, Date.today)
      years_completed -= 1
    end

    years_completed
  end

  # No special logic required for leap day; its anniversary in a non-leap
  # year is considered to have been reached on March 1.
  def reached_anniversary_in_year_of(original_date, new_date)
    if new_date.month == original_date.month
      new_date.day >= original_date.day
    else
      new_date.month > original_date.month
    end
  end

end
