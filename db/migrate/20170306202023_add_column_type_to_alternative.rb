class AddColumnTypeToAlternative < ActiveRecord::Migration
  def change
    add_column :alternatives, :type_alternative, :integer
  end
end
