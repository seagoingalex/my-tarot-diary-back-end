class CreatePersonalProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_profiles do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
