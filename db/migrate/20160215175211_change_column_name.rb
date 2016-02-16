class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :cars, :adress, :address
  end
end
