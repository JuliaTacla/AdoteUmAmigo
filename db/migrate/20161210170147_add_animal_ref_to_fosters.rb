class AddAnimalRefToFosters < ActiveRecord::Migration[5.0]
  def change
    add_reference :fosters, :animal, foreign_key: true
  end
end
