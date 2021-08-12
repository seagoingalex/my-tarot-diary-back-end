class Friend < ApplicationRecord
    has_many :readings, as: :read_requester
    has_many :public_profiles, through: :readings, source: :reader, source_type: "PublicProfile"

end
