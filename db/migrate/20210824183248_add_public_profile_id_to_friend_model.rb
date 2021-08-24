class AddPublicProfileIdToFriendModel < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :public_profile_id, :integer
  end
end
