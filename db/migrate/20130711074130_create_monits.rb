class CreateMonits < ActiveRecord::Migration
  def change
    create_table :monits do |t|
      t.string :name
      t.string :script
      t.string :desc
      t.integer :state

      t.timestamps
    end
  end
end
