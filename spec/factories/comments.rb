FactoryBot.define do
  factory :comment do
    author { "Mike_test " }
     sequence(:body) { |n| "comment body #{n}" }
  end
end