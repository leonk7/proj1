class ChangeColName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :pokemons, :index, :ndex
  end
end
