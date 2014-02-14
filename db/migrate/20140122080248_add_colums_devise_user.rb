class AddColumsDeviseUser < ActiveRecord::Migration
  def change
  	add_column :users, :Firstname, :string
  	add_column :users, :Lastname, :string
  	add_column :users, :Country, :string
    add_column :users, :Role, :string
    add_column :users, :Howdouknow, :string
    add_column :users, :Terms, :boolean
  end
end
