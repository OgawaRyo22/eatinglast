class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :calory
      t.string :description
      t.string :img
      t.datetime :date
      t.timestamp null: false
    end
  end
end
