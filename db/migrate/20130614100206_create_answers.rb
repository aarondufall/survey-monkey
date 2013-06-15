class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :option
      t.references :survey
      
      t.timestamps
    end

      add_index :answers, :option_id
      add_index :answers, :survey_id
 end



end
