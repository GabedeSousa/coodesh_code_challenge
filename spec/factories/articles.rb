FactoryBot.define do
  factory :article do
    featured {false}
    title {Faker::Name.name }
    url {Faker::Internet.url}
    imageUrl {Faker::Internet.url}
    newsSite {Faker::Internet.url}
    summary {Faker::Quote.yoda} 
    publishedAt {Faker::Date.between(from: '2014-09-23', to: '2014-09-25')}
    launches { Faker::Lorem.characters }
    events { Faker::Company.name }
  end
end