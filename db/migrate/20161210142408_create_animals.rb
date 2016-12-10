class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :photo
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
