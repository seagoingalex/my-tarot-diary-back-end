class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.integer :read_requester_id
      t.string :read_requester_type
      t.integer :reader_id
      t.string :reader_type
      t.string :drawing_type
      t.string :question
      t.float :rating
      t.string :descriptors
      t.string :notes

      t.timestamps
    end
  end
end
