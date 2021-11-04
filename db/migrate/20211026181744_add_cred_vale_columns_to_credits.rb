class AddCredValeColumnsToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :credvale, :string
  end
end
