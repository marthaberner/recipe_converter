require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "Converts grams to tablespoons" do
    ingredients = RecipeConverter.new([{"salt" => 30}, {"sugar" => 15}])

    expect(ingredients.to_tablespoons).to eq ([{"salt" => 2}, {"sugar" => 1}])
  end
end

