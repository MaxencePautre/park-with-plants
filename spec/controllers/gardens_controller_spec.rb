require 'rails_helper'

RSpec.describe GardensController, type: :controller do

  let(:valid_attributes) do
    {
      name: "jardin du soir",
      banner_url: ""
    }
  end

  describe "GET Index" do
    it "references all Garden" do
      garden = Garden.create! valid_attributes
      get :index
      expect(assigns(:gardens)).to eq([garden])
    end
  end

  describe "GET Show" do
    it "references one item of Garden" do
      garden = Garden.create! valid_attributes
      get :show, params: {id: garden.to_param}
     expect(assigns(:garden)).to eq(garden)
   end
  end

  describe "GET New" do
    it "create a blank instance of Garden" do
    get :new
    expect(assigns(:garden)).to be_a_new(Garden)
    end
  end

  describe "POST Create" do
    describe "should insert a new instance in the database" do
    end 
  end
end


