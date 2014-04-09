require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "Converts grams to tablespoons" do
    ingredients = RecipeConverter.new([{"salt" => 30}, {"sugar" => 15}])

    expect(ingredients.to_tablespoons).to eq ([{"salt" => 2}, {"sugar" => 1}])
  end
  it "Converts grams to cups" do
    ingredients = RecipeConverter.new([{"salt" => 240}, {"sugar" => 480}])

    expect(ingredients.to_cups).to eq ([{"salt" => 1}, {"sugar" => 2 }])
  end

end

