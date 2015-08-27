class CreateResponseLengths < ActiveRecord::Migration
  def change
    create_table :response_lengths do |t|
      t.string :name

      t.timestamps

    end
  end
end
