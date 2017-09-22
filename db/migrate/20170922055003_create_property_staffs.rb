class CreatePropertyStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :property_staffs do |t|

      t.timestamps
    end
  end
end
