FactoryGirl.define do
  factory :image_part do
    image "Foo"
    trait :header do
      type "header"
    end

    trait :body do
      type "body"
    end

    trait :footer do
      type "footer"
    end
  end
end
