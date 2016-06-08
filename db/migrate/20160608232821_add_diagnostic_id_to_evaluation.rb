class AddDiagnosticIdToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :diagnostic_id, :integer
  end
end
