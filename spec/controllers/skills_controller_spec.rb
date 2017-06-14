require 'rails_helper'

RSpec.describe SkillsController, type: :controller do

  before do
    @dev = FactoryGirl.create(:developer)
  end

  let(:valid_attributes) {
    FactoryGirl.build(:skill).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:skill, title: nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all skills as @skills" do
      skill = Skill.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:skills)).to eq([skill])
    end
  end

  describe "GET #show" do
    it "assigns the requested skill as @skill" do
      skill = Skill.create! valid_attributes
      get :show, params: {id: skill.to_param}, session: valid_session
      expect(assigns(:skill)).to eq(skill)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Skill" do
        expect {
          post :create, params: {skill: valid_attributes, dev_id: @dev.id }, session: valid_session
        }.to change(Skill, :count).by(1)
      end

      it "assigns a newly created skill as @skill" do
        post :create, params: {skill: valid_attributes, dev_id: @dev.id }, session: valid_session
        expect(assigns(:skill)).to be_a(Skill)
        expect(assigns(:skill)).to be_persisted
      end


    end

    context "with invalid params" do
      it "assigns a newly created but unsaved skill as @skill" do
        post :create, params: {skill: invalid_attributes, dev_id: @dev.id }, session: valid_session
        expect(assigns(:skill)).to be_a_new(Skill)
      end

    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:skill, title: 'new_title').attributes
      }

      it "updates the requested skill" do
        skill = Skill.create! valid_attributes
        put :update, params: {id: skill.to_param, skill: new_attributes}, session: valid_session
        skill.reload
        skill.title.should eq('new_title')
      end

      it "assigns the requested skill as @skill" do
        skill = Skill.create! valid_attributes
        put :update, params: {id: skill.to_param, skill: valid_attributes}, session: valid_session
        expect(assigns(:skill)).to eq(skill)
      end

    end

    context "with invalid params" do
      it "assigns the skill as @skill" do
        skill = Skill.create! valid_attributes
        put :update, params: {id: skill.to_param, skill: invalid_attributes}, session: valid_session
        expect(assigns(:skill)).to eq(skill)
      end

    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested skill" do
      skill = Skill.create! valid_attributes
      expect {
        delete :destroy, params: {id: skill.to_param}, session: valid_session
      }.to change(Skill, :count).by(-1)
    end

  end

end
