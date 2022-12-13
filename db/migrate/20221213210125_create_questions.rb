class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :query
      t.string :answer
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.string :difficulty
      t.string :hint
      t.belongs_to :solar_object, null: false, foreign_key: true

      t.timestamps
    end
  end
end
