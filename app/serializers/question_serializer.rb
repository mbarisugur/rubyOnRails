class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :options
  belongs_to :survey
  has_many :options
end
