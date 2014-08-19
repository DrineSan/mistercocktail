class CreateDoses < ActiveRecord::Migration
  def change

    create_table :doses do |t|

      t.integer :amount

      # t.references is the equivalent of doing:
      #
      #   t.integer :cocktail_id
      #   t.index   :cocktail_id
      #
      t.references :cocktail, index: true

      t.references :ingredient, index: true

      t.timestamps
    end

  end
end
