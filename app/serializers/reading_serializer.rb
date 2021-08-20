class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :read_requester_type, :reader_type, :drawing_type, :question, :rating, :descriptors, :notes

  belongs_to :reader
  belongs_to :read_requester
  has_many :cards
end
