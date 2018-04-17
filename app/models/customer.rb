class Customer < ActiveRecord::Base
	validates :cid, presence: true, uniqueness: true
	validates :cname, presence: true
	validates :address, presence: true
	validates_inclusion_of :age, :in => 5..500, presence: true
end
