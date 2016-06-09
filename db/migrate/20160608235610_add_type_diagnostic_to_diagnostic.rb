class AddTypeDiagnosticToDiagnostic < ActiveRecord::Migration
  def change
    add_column :diagnostics, :type_diagnostic, :integer
  end
end
