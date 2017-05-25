class AddColumnNameToDiagnostic < ActiveRecord::Migration[5.0]
  def change
    add_column :diagnostics, :name, :string
  end
end
