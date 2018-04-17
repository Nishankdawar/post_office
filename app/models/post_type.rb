class PostType < ActiveRecord::Base
	validates :post_id, presence: true, uniqueness: true
	validates :ptype, presence: true
end
