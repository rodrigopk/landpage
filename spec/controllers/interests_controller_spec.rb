require 'rails_helper'

RSpec.describe InterestsController, type: :controller do

  before do
    @dev = FactoryGirl.create(:developer)
  end

  let(:valid_attributes) {
    FactoryGirl.build(:interest).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:interest, title: nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all interests as @interests" do
      interest = Interest.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:interests)).to eq([interest])
    end
  end

  describe "GET #show" do
    it "assigns the requested interest as @interest" do
      interest = Interest.create! valid_attributes
      get :show, params: {id: interest.to_param}, session: valid_session
      expect(assigns(:interest)).to eq(interest)
    end
  end


  describe "POST #create" do
    context "with valid params" do
      it "creates a new Interest" do
        expect {
          post :create, params: {interest: valid_attributes, dev_id: @dev.id}, session: valid_session
        }.to change(Interest, :count).by(1)
      end

      it "assigns a newly created interest as @interest" do
        post :create, params: {interest: valid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:interest)).to be_a(Interest)
        expect(assigns(:interest)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved interest as @interest" do
        post :create, params: {interest: invalid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:interest)).to be_a_new(Interest)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:interest, title: 'new title').attributes
      }

      it "updates the requested interest" do
        interest = Interest.create! valid_attributes
        put :update, params: {id: interest.to_param, interest: new_attributes}, session: valid_session
        interest.reload
        interest.title.should eq('new title')
      end

      it "assigns the requested interest as @interest" do
        interest = Interest.create! valid_attributes
        put :update, params: {id: interest.to_param, interest: valid_attributes}, session: valid_session
        expect(assigns(:interest)).to eq(interest)
      end

    end

    context "with invalid params" do
      it "assigns the interest as @interest" do
        interest = Interest.create! valid_attributes
        put :update, params: {id: interest.to_param, interest: invalid_attributes}, session: valid_session
        expect(assigns(:interest)).to eq(interest)
      end

    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested interest" do
      interest = Interest.create! valid_attributes
      expect {
        delete :destroy, params: {id: interest.to_param}, session: valid_session
      }.to change(Interest, :count).by(-1)
    end

  end

end
