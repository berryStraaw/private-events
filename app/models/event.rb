class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    #has_and_belongs_to_many :attendees, class_name: "User"
    has_many :enrollments
    has_many :attendees, through: :enrollments, source: :user
    scope :upcoming, -> {where("date>= ?", Date.today)}
    scope :past, -> {where("date< ? ", Date.today)}
end
