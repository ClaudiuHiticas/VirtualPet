class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :food_type
      t.integer :health_bonus

      t.timestamps
    end
  end
end
