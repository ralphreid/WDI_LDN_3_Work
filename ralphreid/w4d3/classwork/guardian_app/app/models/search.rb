class Search < ActiveRecord::Base

  belongs_to :searchable, polymorphic: true

  def self.new query
    return [] if query.empty?
    self.search(query).map!(&:searchable)
  end


  # the following are required by textaculur but will never need to touch
  def readonly?; true; end
  
  def hash; [searchable_id, searchable_type].hash; end
  
  def eql?(result)
    searchable_id == result.searchable_id and searchable_type == result.searchable_type
  end

end