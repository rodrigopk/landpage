require 'rails_helper'

RSpec.describe Education, type: :model do
  before do
    dev = FactoryGirl.create(:developer)
    @edu = FactoryGirl.create(:education, developer: dev)
  end

  describe 'title' do
    it 'should be present' do
      @edu.title = nil
      expect(@edu).not_to be_valid
    end
  end

  describe 'start_date' do
    it 'should be present' do
      @edu.start_date = nil
      expect(@edu).not_to be_valid
    end
  end

  describe 'institution' do
    it 'should be present' do
      @edu.institution = nil
      expect(@edu).not_to be_valid
    end
  end

end
