class PublicProfile < ApplicationRecord
    belongs_to :user

    has_many :readings, as: :reader
    # has_many :friends, through: :readings, source: :read_requester, source_type: "Friend"
    has_many :friends

end
