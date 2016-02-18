class AddColumnsToRents < ActiveRecord::Migration
  def change
  	add_column :rents, :date_start, :date
  	add_column :rents, :date_end, :date

  end
end
