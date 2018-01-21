# frozen_string_literal: true

class AddRecipeRefToIngredient < ActiveRecord::Migration[5.2]
  def change
    add_reference :ingredients, :recipe, foreign_key: true
  end
end
