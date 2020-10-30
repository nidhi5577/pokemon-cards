class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :rarity
      t.string :artist
      t.string :set

      t.timestamps
    end
  end
end
