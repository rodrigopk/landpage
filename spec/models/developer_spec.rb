require 'rails_helper'

RSpec.describe Developer, type: :model do
  before do
    @dev = FactoryGirl.create(:developer)
  end
  
  describe 'name' do
    it 'should be present' do
      @dev.name = nil
      expect(@dev).not_to be_valid
    end
  end

  describe 'birthdate' do
    it 'should be present' do
      @dev.birthdate = nil
      expect(@dev).not_to be_valid
    end
  end

  describe 'title' do
    it 'should be title' do
      @dev.title = nil
      expect(@dev).not_to be_valid
    end
  end

end
