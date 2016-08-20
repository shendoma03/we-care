class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.text :question

      t.text :choice1
      t.decimal :score1

      t.text :choice2
      t.decimal  :score2

      t.text :choice3
      t.decimal  :score3

      t.text :choice4
      t.decimal  :score4

      t.timestamps
    end
  end
end
