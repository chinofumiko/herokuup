class AddProfileToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accountname, :string
    add_column :users, :profile, :string
    add_column :users, :birthday, :date

  end
end
