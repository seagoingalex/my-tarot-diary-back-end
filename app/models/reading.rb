class Reading < ApplicationRecord
    belongs_to :reader, polymorphic: true
    belongs_to :read_requester, polymorphic: true

    has_many: cardDrawings
    has_many: cards, through: :cardDrawings

end
