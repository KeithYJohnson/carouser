class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :interests
      t.boolean :host

      t.timestamps
    end
  end
end
