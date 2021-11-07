class ChangeCreditsVale < ActiveRecord::Migration
  def change
    change_column :credits, :vale, :integer
  end
end
