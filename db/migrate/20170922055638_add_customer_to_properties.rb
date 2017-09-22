class AddCustomerToProperties < ActiveRecord::Migration[5.1]
  def change
    add_reference :properties, :customer, foreign_key: true
  end
end
