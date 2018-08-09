# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer
#  user_id          :integer
#  response_text    :text
#



class Response < ApplicationRecord

  belongs_to :respondent,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: "User"

  belongs_to :answer_question,
    foreign_key: :answer_choice_id,
    primary_key: :id,
    class_name: "AnswerQuestion"

  has_one :parent_question,
      through: :answer_question,
      source: :question

  def sibling_responses

  end


end
