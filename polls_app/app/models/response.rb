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

  has_one :question,
      through: :answer_question,
      source: :question

  validate :cannot_answer_twice

  def sibling_responses
    #calling question

    #then calling responses on the question
    question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.where(user_id: self.user_id).exists? #.pluck.empty?
  end

  def cannot_answer_twice
    if respondent_already_answered?
      errors[:user] << 'cannot answer twice'
    end
  end

  def same_author

  end


end
