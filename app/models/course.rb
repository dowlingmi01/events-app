class Course < ApplicationRecord
	searchkick
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates :title, presence: true
	validates :description, presence: true, length: {:minimum => 5}
	validates :short_description, presence: true, length: {:maximum => 140}
	has_rich_text :description
end
