require "spec_helper"

describe GalleriesController do
  
  describe 'GET index' do
    
    before do
      @galleries_fake_data = 10.times.map{Gallery.create(name: "wdi") }
    end

    it "should assigns @gallieries" do
      get :index
      expect(assigns[:galleries]).to eq(@galleries_fake_data)
    end

    it "should respond with instances of gallery" do
      get :index
      expect(assigns[:galleries].first.class).to eq(Gallery)
    end

    it "should respond with a 200 status" do
      get :index
      expect(response.status).to eq(200)
    end

    it "should render the index template" do
      get :index
      expect(response).to render_template("index")
    end

  end

  describe "GET show" do
    
    before do
      @gallery_fake_data = Gallery.create(name: "Gallery of gerry")
    end

    it "assigns @gallery" do
      get :show, {id: @gallery_fake_data.id}
      expect(assigns[:gallery]).to eq(@gallery_fake_data)
    end
  end

  describe "POST create" do

    let(:params) { { gallery:{name: "Gerr'sy Gallery" } } }

    it "should create the gallery with given information" do
      post :create, params
      expect(assigns[:gallery].name).to eq(params[:gallery][:name])
    end

    it "should redirect to galleries/show page" do
      post :create, params
      expect(response).to redirect_to gallery_path(assigns[:gallery])
    end

  end

end