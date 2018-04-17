class Pobox < ActiveRecord::Base
	validates :cid, presence: true, uniqueness: true
	validates :post_id, presence: true
end
