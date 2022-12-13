class CreateUserQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_questions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :correctness

      t.timestamps
    end
  end
end
