class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end