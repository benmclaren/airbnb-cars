class ChangeTypeToSpec < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :type, :spec
  end
end
