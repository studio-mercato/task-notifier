class Notifier
  def initialize(card)
    @card = card
  end

  def full_message
    [
      "> <#{url}|#{message}>",
      "> #{mentions}"
    ].join("\n")
  end

  def message
    @card.name
  end

  def url
    @card.url
  end

  def mentions
    slack_names.reject(&:nil?).map { |n| "@#{n}" }.join(', ')
  end

  def slack_names
    @card.member_ids.map { |id| User.find_by(trello_id: id).try(:slack_name) }
  end
end
