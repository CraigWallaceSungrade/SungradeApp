class Appointment < ApplicationRecord
	has_many :appointment_staff
	has_many :staff, through: :appointment_staff

	belongs_to :property

	belongs_to :customer
end
