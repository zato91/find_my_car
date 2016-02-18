class ChangeStatusTypeToRents < ActiveRecord::Migration
  def change
  	change_column :rents, :status, :string
  end
end
