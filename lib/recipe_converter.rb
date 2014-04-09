class RecipeConverter
  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    @ingredients.collect do |item|
      item.collect do |key, value|
        {key => value/15}
      end
    end.flatten
  end
end



