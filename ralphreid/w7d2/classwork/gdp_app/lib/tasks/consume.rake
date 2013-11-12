require 'csv'

namespace :history do
  desc 'process gdp data'
  task gdp: :environment do
    file_path = File.expand_path("../gdp.csv", __FILE__)
    CSV.foreach(file_path) do |year, quarter, gdp|
      next unless /\d{4} Q\d/ =~ quarter
      gdp = Gdp.where(quarter: (quarter)).first_or_create
      rate.update_attributes({
        gdp: gdp
        })
    end
  end
end