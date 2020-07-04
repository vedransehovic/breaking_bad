class CreateCharacters < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name
      t.string :birthday
      t.string :img
      t.string :actor 
      t.string :occupation
      t.string :nickname
      t.string :status
    end
  end

  def down
    drop_table :characters
  end
end
