class AddCredOValeToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :cred_o_vale, :string
  end
end
