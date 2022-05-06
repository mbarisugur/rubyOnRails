class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :survey, null: false, foreign_key: true
      t.string :title
      t.integer :questionType

      t.timestamps
    end
  end
end
