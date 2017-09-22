require 'rails_helper'

RSpec.describe Group, type: :model do

    describe 'validations' do

        describe 'presence' do
            [:name, :score_range].each do |attr|
                it "requires #{attr}" do
                    group = Group.new
                    expect(group.valid?).to be false
                    expect(group.errors[attr]).to include 'can\'t be blank'
                end
            end
        end
    end
end
