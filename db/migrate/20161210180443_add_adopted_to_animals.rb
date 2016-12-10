class AddAdoptedToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :adopted, :boolean, default: false 
  end
end
