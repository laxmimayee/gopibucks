class RenameStateCountriesCountryId < ActiveRecord::Migration
  def change
  	rename_column :states, :countries_id, :country_id
  end
end
