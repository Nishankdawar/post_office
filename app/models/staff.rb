class Staff < ActiveRecord::Base
	validates :sname, presence: true
	validates :sid, presence: true
	validates :designation, presence: true
	validates :address, presence: true
	validates :email, presence: true
end
