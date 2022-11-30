ActiveAdmin.register Recipe do
  permit_params :name, :recipe_type, :calories, ingredients_attributes: [:id, :name, :calories, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.input :recipe_type
      f.input :calories
      f.input :ingredients, include_hidden: false, input_html: { name: "recipe[ingredients_ids]" }
    end
    f.inputs do
      f.has_many :ingredients, allow_destroy: true, new_record: true do |i|
        i.input :name
        i.input :calories
        i.input :proteins
        i.input :fats
        i.input :carbs
        i.input :ingredient_type
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :recipe_type
      row :calories
    end
    panel "Ingredients" do
      table_for recipe.ingredients do
        column :name
        column :calories
        column :proteins
        column :fats
        column :carbs
        column :ingredient_type
      end
    end
    active_admin_comments
  end
end