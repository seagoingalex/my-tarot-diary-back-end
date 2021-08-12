class RenameTypeColumnInCardTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :cards, :type, :arcana_type
  end
end
