class RemoveValeFromCredits < ActiveRecord::Migration
  def change
    remove_column :credits, :vale, :integer
  end
end
