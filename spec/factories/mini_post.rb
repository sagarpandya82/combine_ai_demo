FactoryBot.define do
  factory :mini_post do
    association :user
    content { "A new post" }
  end
end
