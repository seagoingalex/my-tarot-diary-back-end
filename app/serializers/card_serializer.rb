class CardSerializer < ActiveModel::Serializer
  attributes :id, :img, :img_reversed, :suit, :suit_thumbnail, :arcana_type, :name, :value, :value_int, :meaning_up, :meaning_rev, :desc_up, :advice, :desc_rev
end
