namespace :notify do
  desc 'Notify members for all tasks'
  task :all => :environment do
    List.all.each do |list|
      cards_data = Trello.cards(list)
      cards = cards_data.map { |data| CardBuilder.build(data) }
      cards.each do |card|
        Slack.post_message(
          msg: Notifier.new(card).full_message,
          channel: 'general'
        )
      end
    end
  end
end
