class CreateCardDrawings < ActiveRecord::Migration[6.1]
  def change
    create_table :card_drawings do |t|
      t.integer :reading_id
      t.integer :card_id

      t.timestamps
    end
  end
end
