class RecipeConverter
  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    convert(15)
  end

  def to_cups
   convert(240)
  end

  def convert(x)
    @ingredients.collect do |item|
      item.collect do |key, value|
        {key => value/x}
      end
    end.flatten
  end
end



