class CreateCustomerStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_staffs do |t|

      t.timestamps
    end
  end
end
