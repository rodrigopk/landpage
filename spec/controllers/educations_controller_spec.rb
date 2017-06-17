require 'rails_helper'

RSpec.describe EducationsController, type: :controller do

  before do
    @dev = FactoryGirl.create(:developer)
  end

  let(:valid_attributes) {
    FactoryGirl.build(:education).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:education, title: nil).attributes
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EducationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all educations as @educations" do
      education = Education.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:educations)).to eq([education])
    end
  end

  describe "GET #show" do
    it "assigns the requested education as @education" do
      education = Education.create! valid_attributes
      get :show, params: {id: education.to_param}, session: valid_session
      expect(assigns(:education)).to eq(education)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Education" do
        expect {
          post :create, params: {education: valid_attributes, dev_id: @dev.id}, session: valid_session
        }.to change(Education, :count).by(1)
      end

      it "assigns a newly created education as @education" do
        post :create, params: {education: valid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:education)).to be_a(Education)
        expect(assigns(:education)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved education as @education" do
        post :create, params: {education: invalid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:education)).to be_a_new(Education)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:education, title: "new title").attributes
      }

      it "updates the requested education" do
        education = Education.create! valid_attributes
        put :update, params: {id: education.to_param, education: new_attributes}, session: valid_session
        education.reload
        education.title.should eq('new title')
      end

      it "assigns the requested education as @education" do
        education = Education.create! valid_attributes
        put :update, params: {id: education.to_param, education: valid_attributes}, session: valid_session
        expect(assigns(:education)).to eq(education)
      end
    end

    context "with invalid params" do
      it "assigns the education as @education" do
        education = Education.create! valid_attributes
        put :update, params: {id: education.to_param, education: invalid_attributes}, session: valid_session
        expect(assigns(:education)).to eq(education)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested education" do
      education = Education.create! valid_attributes
      expect {
        delete :destroy, params: {id: education.to_param}, session: valid_session
      }.to change(Education, :count).by(-1)
    end
  end

end
