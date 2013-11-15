require "spec_helper"

describe Ingredient do
  describe "validation" do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of :name }
    it{ should validate_presence_of :image }
  end

  describe "mass assingment" do
    it { should allow_mass_assingment_of :name }
    it { should allow_mass_assingment_of :image}

    # it { should_not allow_mass_assingment_of :attribute }
  end

end