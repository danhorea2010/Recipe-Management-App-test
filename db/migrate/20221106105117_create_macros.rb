class CreateMacros < ActiveRecord::Migration[7.0]
  def change
    create_table :macros do |t|
      t.integer :proteins
      t.integer :fats
      t.integer :carbs

      t.timestamps
    end
  end
end
