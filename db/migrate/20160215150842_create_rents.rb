class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.boolean :status
      t.references :car, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
