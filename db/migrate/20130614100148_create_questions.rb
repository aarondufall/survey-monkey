class CreateQuestions < ActiveRecord::Migration
  def change
     create_table :questions do |t|
      t.text :question_text
      t.boolean :mandatory
      t.string :helper_text
      t.references :survey
      
      t.timestamps
    end

    add_index :questions, :survey_id

  end
end
