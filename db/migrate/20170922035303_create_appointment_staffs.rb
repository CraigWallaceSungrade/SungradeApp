class CreateAppointmentStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :appointment_staffs do |t|

      t.timestamps
    end
  end
end
