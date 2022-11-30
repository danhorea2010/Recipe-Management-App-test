class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :recipe_type
      t.integer :calories

      t.timestamps
    end
  end
end
