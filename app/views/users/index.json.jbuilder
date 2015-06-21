json.array!(@users) do |user|
  json.extract! user, :id, :canonical_name, :trello_id, :slack_name
  json.url user_url(user, format: :json)
end
