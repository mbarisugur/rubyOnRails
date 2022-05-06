class FeedbackSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :survey
  has_one :response
end
