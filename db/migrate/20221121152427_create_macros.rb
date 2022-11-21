class CreateMacros < ActiveRecord::Migration[7.0]
  def change
    create_table :macros do |t|
      t.integer :protein
      t.integer :fat
      t.string :carbs
      t.string :integer

      t.timestamps
    end
  end
end
