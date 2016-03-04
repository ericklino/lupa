class CreateJoinTableEvalutionQuestion < ActiveRecord::Migration
  def change
    create_join_table :evalutions, :questions do |t|
      t.index [:evalution_id, :question_id]
      t.index [:question_id, :evalution_id]
    end
  end
end
