require "spec_helper"

describe IngredientsController do
  describe "GET index" do
    let!(:ingredients) { 3.times.map { |index| Ingredient.create(name: "ingredient #{index}", image: "image") } }

    it "should instantiate @ingredients with all ingredients in the database" do
      get :index
      expect(assigns[:ingredients]).to eq(ingredients)
    end

    it "should render index template" do
      get :index
      expect(response).to render_template("index")
    end

  end
end