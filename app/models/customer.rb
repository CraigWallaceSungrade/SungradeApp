class Customer < ApplicationRecord
	has_many :appointments, dependent: :destroy

	has_many :customer_staff, dependent: :destroy
	has_many :staff, through: :customer_staff

	has_many :properties, dependent: :destroy
end
