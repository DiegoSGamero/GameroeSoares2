class AddRegistrationNumberToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :registration_number, :string
  end
end
