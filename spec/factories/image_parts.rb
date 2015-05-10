FactoryGirl.define do
  factory :image_part do
    image { File.open("#{Rails.root}/spec/support/fixtures/sample.jpg") }
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
