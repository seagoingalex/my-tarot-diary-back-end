class Friend < ApplicationRecord
    has_many :readings, as: :read_requester
    has_one :publicProfile, through: :readings

end
