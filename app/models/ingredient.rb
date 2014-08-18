class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy,
  validates :name, presence: true,
  lenght: {maximum: 100}
end
