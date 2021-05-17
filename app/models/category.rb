class Category < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	validates :name, presence: true, length: {minimum: 5}
	validates_uniqueness_of :name
	
	has_many :events
end
