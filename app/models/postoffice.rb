class Postoffice < ActiveRecord::Base
	validates :post_id, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :location, presence: true
	validates :description, presence: true
	validates :po_type, presence: true
end
