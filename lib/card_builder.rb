module CardBuilder
  def self.build(params)
    params = params.symbolize_keys
    Card.new(
      trello_id: params[:id],
      name: params[:name],
      url: params[:shortUrl],
      member_ids: params[:idMembers]
    )
  end
end
