class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :questions, :alternatives do |t|
       t.index [:question_id, :alternative_id]
       t.index [:alternative_id, :question_id]
    end
  end
end
