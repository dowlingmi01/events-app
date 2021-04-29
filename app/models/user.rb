class User < ApplicationRecord

    attr_accessor :first_name, :last_name, :user_name

	has_many :organized_events, class_name: "Event", dependent: :destroy	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
