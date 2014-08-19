class Cocktail < ActiveRecord::Base

  has_many :doses, dependent: :destroy

  # cocktail = Cocktail.find(1)
  #
  # cocktail.ingredients # => [<ingredient_1>, ..., <ingredient_n>]
  #
  # Pour récupérer les ingrédients, rails génère la requête SQL suivante :
  # 
  #   SELECT ingredients.*
  #   FROM ingredients, doses
  #   JOIN ingredients.id = doses.ingredient_id
  #   WHERE doses.cocktail_id = 1
  #
  has_many :ingredients, through: :doses

  validates :name, presence: true, length: { maximum: 100 }

end