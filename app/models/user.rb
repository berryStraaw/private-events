class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, class_name: "Event", foreign_key: "creator_id"
  has_and_belongs_to_many :events, class_name: "Event", foreign_key: "attendee"
end
