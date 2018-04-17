class MoneyExchange < ActiveRecord::Base
	validates :cid, presence: true, uniqueness: true
	validates :passid, presence: true, uniqueness: true
	validates :metype, presence: true
	validates :amount, presence: true
	
end
