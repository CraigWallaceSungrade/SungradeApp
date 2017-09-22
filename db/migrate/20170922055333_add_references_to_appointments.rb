class AddReferencesToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointments, :property, foreign_key: true
    add_reference :appointments, :customer, foreign_key: true
  end
end
