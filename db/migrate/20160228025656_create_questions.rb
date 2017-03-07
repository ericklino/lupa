class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
       t.string   :enunciation
       t.integer  :type_question
       t.integer  :category_id
      
      t.timestamps null: false
    end
  end
end
