class ServicePayment < ActiveRecord::Base
	validates :billno, presence: true, uniqueness: true
	validates :amount, presence: true
	validates :category, presence: true
	
	validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.to_date.present? && date.to_date > Date.today
      errors.add(:date, "can't be in the future")
    end
  end
  
end
