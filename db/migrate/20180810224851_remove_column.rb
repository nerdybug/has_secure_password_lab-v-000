class RemoveColumn < ActiveRecord::Migration
  def change
    delete_column :users, :password_confirmation
  end
end
