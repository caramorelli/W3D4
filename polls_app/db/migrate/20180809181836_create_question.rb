class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :text_question
      t.integer :poll_id
      t.timestamps
    end
  end
end
