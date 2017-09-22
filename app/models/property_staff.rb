class PropertyStaff < ApplicationRecord
	belongs_to :property 
	belongs_to :staff 
end
