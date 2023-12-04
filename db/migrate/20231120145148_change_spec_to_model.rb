class ChangeSpecToModel < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :spec, :model
  end
end
