class User < ActiveRecord::Base
	extend FriendlyId
	friendly_id :username

    # attr_accessor :first_name, :last_name, :user_name, :username, :organization_name

	has_many :organized_events, class_name: "Event", dependent: :destroy	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	def to_s
		"#{username}"
	end

	def full_name
		"#{first_name} #{last_name}"
	end

end
