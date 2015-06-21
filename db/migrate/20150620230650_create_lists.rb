class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :trello_id

      t.timestamps null: false
    end
  end
end
