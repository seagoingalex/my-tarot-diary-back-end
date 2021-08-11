class PersonalProfile < ApplicationRecord
    belongs_to :user

    has_many :readings, as: :reader
    has_many :readings, as: :read_requester

end
