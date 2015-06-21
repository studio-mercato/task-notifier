module Trello
  KEY = ENV['SM_TRELLO_KEY']
  TOKEN = ENV['SM_TRELLO_TOKEN']

  def self.trello_auth_params
    {
      query: { key: KEY, token: TOKEN }
    }
  end

  def self.organization
    response = HTTParty.get('http://api.trello.com/1/organizations/522cdaace2fe81ba21007bfd/boards', trello_auth_params)
  end

  def self.board
    response = HTTParty.get("http://api.trello.com/1/boards/54bc95374ef116235e2dc3c8/lists", trello_auth_params)
  end

  def self.cards(list)
    response = HTTParty.get("http://api.trello.com/1/lists/#{list.trello_id}/cards", trello_auth_params)
  end
end
