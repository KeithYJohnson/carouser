class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :interests
      t.boolean :host
      t.string :hashed_password
      t.string :salt


      t.timestamps
    end
  end
end
