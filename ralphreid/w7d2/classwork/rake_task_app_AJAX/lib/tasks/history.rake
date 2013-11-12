require 'csv'

namespace :history do
  desc 'process data for euro vs USD, GBP, JPY'
  task euro: :environment do
    file_path = File.expand_path("../exchange.csv", __FILE__)
    CSV.foreach(file_path) do |date, usd, gbp, jpy|
      next unless /\d{4}-\d{2}-\d{2}/ =~ date
      rate = Rate.where(date_value: Date.parse(date)).first_or_create
      rate.update_attributes({
        usd: usd,
        gbp: gbp,
        jpy: jpy
        })
    end
  end
end