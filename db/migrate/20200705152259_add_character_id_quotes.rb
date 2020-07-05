class AddCharacterIdQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :character_id, :integer
  end
end
