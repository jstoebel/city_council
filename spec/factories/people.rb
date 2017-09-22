include Faker
FactoryGirl.define do
  factory :person do
    political_score { Number.between 0, 100 }
  end
end
