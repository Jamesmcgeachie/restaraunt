class CuisineType < ActiveRecord::Base

	has_many :restaurants

	validates :name, presence: true
	
end
