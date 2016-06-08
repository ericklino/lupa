class RemoveColumnIdEvaluationDiagnostic < ActiveRecord::Migration
  def change
    remove_column :diagnostics, :evaluation_id
  end
end
