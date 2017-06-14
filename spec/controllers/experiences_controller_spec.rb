require 'rails_helper'

RSpec.describe ExperiencesController, type: :controller do

  before do
    @dev = FactoryGirl.create(:developer)
  end

  let(:valid_attributes) {
    FactoryGirl.build(:experience).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:experience, title: nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all experiences as @experiences" do
      experience = Experience.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:experiences)).to eq([experience])
    end
  end

  describe "GET #show" do
    it "assigns the requested experience as @experience" do
      experience = Experience.create! valid_attributes
      get :show, params: {id: experience.to_param}, session: valid_session
      expect(assigns(:experience)).to eq(experience)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Experience" do
        expect {
          post :create, params: {experience: valid_attributes, dev_id: @dev.id }, session: valid_session
        }.to change(Experience, :count).by(1)
      end

      it "assigns a newly created experience as @experience" do
        post :create, params: {experience: valid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:experience)).to be_a(Experience)
        expect(assigns(:experience)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved experience as @experience" do
        post :create, params: {experience: invalid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:experience)).to be_a_new(Experience)
      end

    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:experience, title: 'new Title').attributes
      }

      it "updates the requested experience" do
        experience = Experience.create! valid_attributes
        put :update, params: {id: experience.to_param, experience: new_attributes}, session: valid_session
        experience.reload
        experience.title.should eq('new Title')
      end

      it "assigns the requested experience as @experience" do
        experience = Experience.create! valid_attributes
        put :update, params: {id: experience.to_param, experience: valid_attributes}, session: valid_session
        expect(assigns(:experience)).to eq(experience)
      end

    end

    context "with invalid params" do
      it "assigns the experience as @experience" do
        experience = Experience.create! valid_attributes
        put :update, params: {id: experience.to_param, experience: invalid_attributes}, session: valid_session
        expect(assigns(:experience)).to eq(experience)
      end

    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested experience" do
      experience = Experience.create! valid_attributes
      expect {
        delete :destroy, params: {id: experience.to_param}, session: valid_session
      }.to change(Experience, :count).by(-1)
    end

  end

end
