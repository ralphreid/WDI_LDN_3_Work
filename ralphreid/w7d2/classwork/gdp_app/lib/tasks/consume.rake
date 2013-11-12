require 'csv'

namespace :gdp do
  desc 'process gdp data'
  task gdp: :environment do
    file_path = File.expand_path("../gdp.csv", __FILE__)
    CSV.foreach(file_path) do |quarter, value|
      next unless /\d{4} Q\d/ =~ quarter
      gdp = Gdp.where(quarter: quarter).first_or_create
      gdp.update_attributes({
        quarter: quarter,
        gdp: value
        })
    end
  end
end