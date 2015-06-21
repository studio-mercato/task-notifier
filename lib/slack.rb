module Slack

  URL = ENV['SM_SLACK_URL']

  def self.post_message(params)
    HTTParty.post(URL, body: {
      text: params[:msg],
      channel: "##{params[:channel]}",
      link_names: 1
    }.to_json)
  end
end
