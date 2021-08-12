class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :read_requester_type, :reader_type, :drawing_type, :question, :rating, :descriptors, :notes

  belongs_to :reader
  belongs_to :read_requester
end
