class Property < ApplicationRecord
	has_many :appointments
	belongs_to :customer
end
