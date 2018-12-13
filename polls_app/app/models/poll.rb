# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  creator_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
