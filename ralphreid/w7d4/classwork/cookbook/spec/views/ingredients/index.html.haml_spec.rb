require "spec_helper"

describe "ingredients/index.html.haml" do
  let(:ingredients) { 3.times.map{ |index| Ingredient.create name: "ingredient#{index}", image: "image" }}

  before(:each) do
      assign :ingredients, ingredients
      
      #now that render has been called , we have access to the 'rendered' variable that contain the rendered html
    end

  describe "with 3 ingredients" do
    before(:each) do
      controller.stub(:current_user).and_return( User.new)
      render
    end

    it "should have 3 rows containing recipes" do
      rendered.should have_selector "ol li div.ingredient", count: 3
    end

    it "should have a link to show the ingredient page" do
      rendered.should have_link(ingredients.first.name, href: ingredient_path(ingredients.first))
    end
  end

  describe "as an admin" do
    before(:each) do
      controller.stub(:current_user).and_return( User.new(role: "admin"))
      render
    end

    it "should render a link to create a new ingredient" do
      rendered.should have_link("New Ingredient")
    end
  end

end