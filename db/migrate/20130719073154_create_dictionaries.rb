class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :name
      t.string :code
      t.string :group
      t.integer :ordered
      t.text :description

      t.timestamps
    end
  end
end
