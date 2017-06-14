class Experience < ApplicationRecord

	belongs_to :developer

  validates :title, presence: true
  validates :date_started, presence: true
  validates :company, presence: true

  def period
    end_date = (self.current) ? Date.today : self.date_ended
    period_months = (end_date.year * 12 + end_date.month) - (self.date_started.year * 12 + self.date_started.month)
    
    { months: period_months%12, years: period_months/12 }
  end

end
