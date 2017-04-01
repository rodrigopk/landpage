require 'rails_helper'

RSpec.describe DevelopersController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.build(:developer).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:developer, name: nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #show" do
    it "assigns the requested developer as @developer" do
      developer = Developer.create! valid_attributes
      get :show, params: {id: developer.to_param}, session: valid_session
      expect(assigns(:developer)).to eq(developer)
    end
  end

end
