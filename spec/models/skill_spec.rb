require 'rails_helper'

RSpec.describe Skill, type: :model do
  before do
    dev = FactoryGirl.create(:developer)
    @skill = FactoryGirl.create(:skill, developer: dev)
  end

  describe 'title' do
    it 'should be present' do
      @skill.title = nil
      expect(@skill).not_to be_valid
    end
  end

  describe 'experience' do
    it 'should be present' do
      @skill.experience = nil
      expect(@skill).not_to be_valid
    end
  end

end
