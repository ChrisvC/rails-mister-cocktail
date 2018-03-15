class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :ingredients
      t.string :doses

      t.timestamps
    end
  end
end
