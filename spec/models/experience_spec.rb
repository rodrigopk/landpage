require 'rails_helper'

RSpec.describe Experience, type: :model do
  before do
    dev = FactoryGirl.create(:developer)
    @xp = FactoryGirl.create(:experience, developer: dev)
  end

  describe 'title' do
    it 'should be present' do
      @xp.title = nil
      expect(@xp).not_to be_valid
    end
  end

  describe 'date_started' do
    it 'should be present' do
      @xp.date_started = nil
      expect(@xp).not_to be_valid
    end
  end

  describe 'company' do
    it 'should be present' do
      @xp.company = nil
      expect(@xp).not_to be_valid
    end
  end

end
