class CardDrawingSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :reading
  belongs_to :card
end
