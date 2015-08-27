class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :interviewer_id
      t.integer :response_length_id
      t.integer :category_id
      t.text :question

      t.timestamps

    end
  end
end
