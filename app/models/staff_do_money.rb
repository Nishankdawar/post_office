class StaffDoMoney < ActiveRecord::Base
	validates :sid, presence: true, uniqueness: true
	validates :passid, presence: true, uniqueness: true
	
end
