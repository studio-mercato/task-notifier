class Card
  attr_accessor :trello_id, :name, :url, :member_ids

  def initialize(params)
    @trello_id = params[:trello_id]
    @name = params[:name]
    @url = params[:url]
    @member_ids = params[:member_ids]
  end
end
