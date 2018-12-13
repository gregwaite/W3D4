class Poll < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  belongs_to :creator,
    class_name: :User,
    foreign_key: :creator_id,
    primary_key: :id

  has_many :questions,
    class_name: :Question,
    foreign_key: :question_id,
    primary_key: :id
end