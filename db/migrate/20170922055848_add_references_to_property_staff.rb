class AddReferencesToPropertyStaff < ActiveRecord::Migration[5.1]
  def change
    add_reference :property_staffs, :property, foreign_key: true
    add_reference :property_staffs, :staff, foreign_key: true
  end
end
