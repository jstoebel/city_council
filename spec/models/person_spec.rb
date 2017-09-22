require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'political_score' do
    setup do
      @person = Person.new
    end

    [-1, 101, nil].each do |score|
      it "disallows political_score of #{score}" do
        @person.political_score = score
        expect(@person.valid?).to be(false)
        expect(@person.errors[:political_score]).to include('must be between 0 and 100')
      end
    end
  end # polical_score
end
