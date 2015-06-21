class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :canonical_name
      t.string :trello_id
      t.string :slack_name

      t.timestamps null: false
    end
  end
end
