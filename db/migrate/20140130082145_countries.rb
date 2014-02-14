class Countries < ActiveRecord::Migration
  def change
    add_column :countries, :cname, :string
    add_column :countries, :ccode, :string
    add_column :countries, :ccurency, :string
  end
end
