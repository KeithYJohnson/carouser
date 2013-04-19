class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.datetime :date
      t.time :start_time
      t.time :end_time
      t.text :description
      t.integer :host_id

      t.timestamps
    end
  end
end
