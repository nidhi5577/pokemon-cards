class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :uid
      t.string :name
      t.string :imageUrl
      t.string :imageUrlHiRes
      t.string :supertype
      t.string :subtype
      t.string :number
      t.string :rarity
      t.string :artist
      t.string :series
      t.string :set
      t.string :setCode
      t.string :text
      t.string :text

      t.timestamps
    end
  end
end
