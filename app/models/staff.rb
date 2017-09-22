class Staff < ApplicationRecord
	has_many :appointment_staff
	has_many :staff, through: :appointment_staff

	has_many :customer_staff
	has_many :customers, through: :customer_staff

	has_many :property_staff
	has_many :staff, through: :property_staff
end
