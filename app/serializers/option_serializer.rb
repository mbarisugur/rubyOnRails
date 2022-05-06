class OptionSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :question
end
