class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.textevent_id :body

      t.timestamps
    end
  end
end
