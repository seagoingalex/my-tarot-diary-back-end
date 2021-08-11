class PublicProfile < ApplicationRecord
    belongs_to :user

    has_many :readings, as: :reader
    has_many :friends, through: :readings

end
