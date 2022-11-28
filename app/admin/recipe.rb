ActiveAdmin.register Recipe do
  permit_params :name, :type, :calories, ingredients_attributes: [:id, :name, :calories, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.input :type
      f.input :calories
      f.input :ingredient_ids, as: :select, collection: Ingredient.all, multiple: true
    end
    f.inputs do
      f.has_many :ingredients, allow_destroy: true, new_record: true do |i|
        i.input :name
        i.inputs :calories
      end
    end
    f.actions
  end
end