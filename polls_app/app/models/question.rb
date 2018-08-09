# == Schema Information
#
# Table name: questions
#
#  id            :bigint(8)        not null, primary key
#  text_question :text
#  poll_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#



class Question < ApplicationRecord

  belongs_to :poll,
    foreign_key: :poll_id,
    primary_key: :id,
    class_name: "Poll"

  has_many :answer_question,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: "AnswerQuestion"

  has_many :responses,
    through: :answer_question,
    source: :responses


end
