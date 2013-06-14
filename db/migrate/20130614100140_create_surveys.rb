class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :link
      t.references :user
      
      t.timestamps
    end
  end
end
