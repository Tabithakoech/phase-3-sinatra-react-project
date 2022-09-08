class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :cocktail_name
      t.string :image
      t.string :category
      t.string :glass
      t.timestamps
    end
  end
end
