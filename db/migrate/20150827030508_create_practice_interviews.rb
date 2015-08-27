class CreatePracticeInterviews < ActiveRecord::Migration
  def change
    create_table :practice_interviews do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
