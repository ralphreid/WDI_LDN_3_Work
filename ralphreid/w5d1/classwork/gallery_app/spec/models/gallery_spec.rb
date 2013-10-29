require 'spec_helper'

describe Gallery do 
  describe 'Validtions' do
    it{ should validate_presence_of(:name) }
  end
  
end