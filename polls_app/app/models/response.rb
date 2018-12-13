# == Schema Information
#
# Table name: responses
#
#  id            :bigint(8)        not null, primary key
#  respondent_id :integer          not null
#  choice_id     :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Response < ApplicationRecord
  belongs_to :respondent,
    class_name: :User,
    foreign_key: :respondent_id,
    primary_key: :id

  belongs_to :answer_choice,
      class_name: :AnswerChoice,
      foreign_key: :choice_id,
      primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question

    
  def sibling_responses
    Response.question.responses.include?(self)
  end
end
