class CreateAnswerQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_questions do |t|
      t.integer :question_id
      t.text :text_choice
      t.timestamps
    end
  end
end
