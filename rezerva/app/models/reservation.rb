class Reservation < ActiveRecord::Base

	belongs_to :restaurant
	validates :reservation_time, presence: true
end
