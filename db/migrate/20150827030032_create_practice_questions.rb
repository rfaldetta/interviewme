class CreatePracticeQuestions < ActiveRecord::Migration
  def change
    create_table :practice_questions do |t|
      t.text :response
      t.integer :practice_interview_id
      t.integer :question_id

      t.timestamps

    end
  end
end
