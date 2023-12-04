class AddCcirAndCarToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :ccir, :string
    add_column :properties, :car, :string
  end
end
