class Store
  include MongoMapper::Document
  include Tire::Model::Search
  include Tire::Model::Callbacks

  include Geocoder::Model::MongoMapper

  key :address, String
  key :lon_lat, Array
  timestamps!

  geocoded_by       :address, :coordinates => :lon_lat
  after_validation  :geocode #auto-fetch coords

  mapping do
    indexes :address, type: 'string'
    indexes :lon_lat, type: 'geo_point'
  end

end
