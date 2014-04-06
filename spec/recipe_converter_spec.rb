require 'rspec'
require 'recipe_converter'

describe 'RecipeConverter' do
  it "Prints an array of ingredients in the recipe" do
    ingredients = RecipeConverter.new([:sugar => 45, :salt => 60])

    expect(ingredients.to_tablespoons).to eq ([:sugar => 45, :salt => 60])

  end
end