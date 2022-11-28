ActiveAdmin.register Ingredient do
  permit_params :name, :calories, macros_attributes: [:id, :name, :calories, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.input :calories
      f.input :macro_ids, as: :select, collection: Macro.all, multiple: true
    end
    f.inputs do
      f.has_many :macros, allow_destroy: true, new_record: true do |i|
        i.input :proteins
        i.input :fats
        i.inputs :carbs
      end
    end
    f.actions
  end


end