class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :permission
      t.string :desc
      t.integer :state

      t.timestamps
    end
  end
end
