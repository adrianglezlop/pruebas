class AddValeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :vale, :integer
  end
end
