class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :option
      t.references :response
      
      t.timestamps
    end
  end
end
