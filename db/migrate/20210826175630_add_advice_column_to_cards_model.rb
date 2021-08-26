class AddAdviceColumnToCardsModel < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :advice, :string
  end
end
