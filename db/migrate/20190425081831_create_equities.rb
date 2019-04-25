class CreateEquities < ActiveRecord::Migration[5.2]
  def change
    create_table :equities do |t|
      t.string :question
      t.string :optionA
      t.string :optionB
      t.string :optionC
      t.string :optionD
      t.string :correctOption
      t.string :answer,         :limit =>400

      t.timestamps
    end
  end
end
