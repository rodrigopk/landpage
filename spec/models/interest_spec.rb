require 'rails_helper'

RSpec.describe Interest, type: :model do
  before do
  	dev = FactoryGirl.create(:developer)
    @interest = FactoryGirl.create(:interest, developer: dev)
  end

  describe 'title' do
    it 'should be present' do
      @interest.title = nil
      expect(@interest).not_to be_valid
    end
  end

end
