class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :img
      t.string :img_reversed
      t.string :suit
      t.string :suit_thumbnail
      t.string :type
      t.string :name
      t.string :value
      t.integer :value_int
      t.string :meaning_up
      t.string :meaning_rev
      t.string :desc_up
      t.string :desc_rev

      t.timestamps
    end
  end
end
