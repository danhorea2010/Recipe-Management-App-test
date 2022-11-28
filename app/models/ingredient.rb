class Ingredient < ApplicationRecord
  has_and_belongs_to_many :macros
  has_and_belongs_to_many :recipes
  accepts_nested_attributes_for :macros, allow_destroy: true
end
