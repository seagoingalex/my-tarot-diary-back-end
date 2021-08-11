class Card < ApplicationRecord
    has_many :cardDrawings
    has_many :readings, through: :cardDrawings

end
