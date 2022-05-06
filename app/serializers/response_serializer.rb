class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :question
  belongs_to :option
  belongs_to :feedback
end
