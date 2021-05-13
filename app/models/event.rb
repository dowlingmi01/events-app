class Event < ActiveRecord::Base
	searchkick
	extend FriendlyId
	friendly_id :title, use: :slugged
	
	belongs_to :organizer, class_name: "User", foreign_key: "user_id"

	validates :title, presence: true, length: {minimum: 5}
	validates :venue, presence: true
	validates :location, presence: true

	mount_uploader :image, ImageUploader

	has_rich_text :description

end
