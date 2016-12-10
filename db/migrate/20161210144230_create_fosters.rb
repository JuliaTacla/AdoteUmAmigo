class CreateFosters < ActiveRecord::Migration[5.0]
  def change
    create_table :fosters do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.boolean :children
      t.boolean :pets

      t.timestamps
    end
  end
end
