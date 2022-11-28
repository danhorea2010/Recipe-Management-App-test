class IngredientsMacros < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients_macros, id: false do |t|
      t.belongs_to :ingredient
      t.belongs_to :macro
    end
  end
end
