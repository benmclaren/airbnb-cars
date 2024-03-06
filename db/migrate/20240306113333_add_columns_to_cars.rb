class AddColumnsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :layout, :string
    add_column :cars, :power, :string
    add_column :cars, :transmission, :string
    add_column :cars, :body_style, :string
    add_column :cars, :engine, :string
    add_column :cars, :year, :string
  end
end
