class AddReferencesToAppointmentStaff < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointment_staffs, :staff, foreign_key: true
    add_reference :appointment_staffs, :appointments, foreign_key: true
  end
end
