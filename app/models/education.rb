class Education < ApplicationRecord
  belongs_to :developer

  validates :title, presence: true
  validates :start_date, presence: true
  validates :institution, presence: true

  def period
    period_end = (self.current) ? Date.today : self.end_date
    period_months = (period_end.year * 12 + period_end.month) - (self.start_date.year * 12 + self.start_date.month)
    
    { months: period_months%12, years: period_months/12 }
  end
end
