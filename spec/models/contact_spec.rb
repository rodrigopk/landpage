require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    dev = FactoryGirl.create(:developer)
    @contact = FactoryGirl.create(:contact, developer: dev)
  end

  describe 'phone' do
    it 'should be present' do
      @contact.phone = nil
      expect(@contact).not_to be_valid
    end

    it 'should be present' do
      @contact.phone = 'aaaa9999bbbb'
      expect(@contact).not_to be_valid
    end
  end

  describe 'email' do
    it 'should be present' do
      @contact.email = nil
      expect(@contact).not_to be_valid
    end

    it 'should be in valid format' do
      @contact.email = 'not_valid_em@il'
      expect(@contact).not_to be_valid
    end
  end

  describe 'skype_id' do
    it 'should be present' do
      @contact.skype_id = nil
      expect(@contact).not_to be_valid
    end
  end

end
