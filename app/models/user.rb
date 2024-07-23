class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_events, class_name: "Event", foreign_key: "creator_id", inverse_of: 'creator'


  has_many :attendee_events, foreign_key: :attendee_id
  has_many :attended_events, through: :attendee_events
end
