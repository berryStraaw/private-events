class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, inverse_of: :creator
  has_many :enrollments
  has_many :attended_events, through: :enrollments, source: :event
  #has_and_belongs_to_many :events, inverse_of: :attendee
  validates :username, presence: true
  validates :username, length: { in: 4..16}
  validates :username, uniqueness: true
end
