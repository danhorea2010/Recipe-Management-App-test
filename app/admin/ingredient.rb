ActiveAdmin.register Ingredient do
  permit_params :name, :calories, :proteins, :fats, :carbs, :ingredient_type


end