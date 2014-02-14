class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string   :name
      t.string   :iso
      t.integer  :countries_id

      t.timestamps
    end
  end
end
