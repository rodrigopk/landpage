require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  before do
    @dev = FactoryGirl.create(:developer)
  end

  let(:valid_attributes) {
    FactoryGirl.build(:contact).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:contact, phone: nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all contacts as @contacts" do
      contact = Contact.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:contacts)).to eq([contact])
    end
  end

  describe "GET #show" do
    it "assigns the requested contact as @contact" do
      contact = Contact.create! valid_attributes
      get :show, params: {id: contact.to_param}, session: valid_session
      expect(assigns(:contact)).to eq(contact)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Contact" do
        expect {
          post :create, params: {contact: valid_attributes, dev_id: @dev.id}, session: valid_session
        }.to change(Contact, :count).by(1)
      end

      it "assigns a newly created contact as @contact" do
        post :create, params: {contact: valid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:contact)).to be_a(Contact)
        expect(assigns(:contact)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved contact as @contact" do
        post :create, params: {contact: invalid_attributes, dev_id: @dev.id}, session: valid_session
        expect(assigns(:contact)).to be_a_new(Contact)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:contact, phone: '999999991').attributes
      }

      it "updates the requested contact" do
        contact = Contact.create! valid_attributes
        put :update, params: {id: contact.to_param, contact: new_attributes}, session: valid_session
        contact.reload
      end

      it "assigns the requested contact as @contact" do
        contact = Contact.create! valid_attributes
        put :update, params: {id: contact.to_param, contact: valid_attributes}, session: valid_session
        expect(assigns(:contact)).to eq(contact)
      end
    end

    context "with invalid params" do
      it "assigns the contact as @contact" do
        contact = Contact.create! valid_attributes
        put :update, params: {id: contact.to_param, contact: invalid_attributes}, session: valid_session
        expect(assigns(:contact)).to eq(contact)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested contact" do
      contact = Contact.create! valid_attributes
      expect {
        delete :destroy, params: {id: contact.to_param}, session: valid_session
      }.to change(Contact, :count).by(-1)
    end
  end

end
