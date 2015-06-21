class AddDoNowList < ActiveRecord::Migration
  def up
    List.create(trello_id: '54eb0ce7a80258b4ee0ee744')
  end

  def down
    List.find_by(trello_id: '54eb0ce7a80258b4ee0ee744').try(:destroy)
  end
end
