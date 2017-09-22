class AddReferencesToCustomerStaff < ActiveRecord::Migration[5.1]
  def change
    add_reference :customer_staffs, :staff, foreign_key: true
    add_reference :customer_staffs, :customer, foreign_key: true
  end
end
