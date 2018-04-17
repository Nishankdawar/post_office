class Telephone < ActiveRecord::Base
	validates :sid, presence: true, uniqueness: true
	validates :telephone, presence: true, uniqueness: true
end
