# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Poll < ApplicationRecord

  belongs_to :author,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: "User"

    has_many :questions,
      foreign_key: :question_id,
      primary_key: :id,
      class_name: "Question"

end
