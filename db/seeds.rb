# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resp = RestClient::Request.execute(method: :get,
  url: "https://api.spaceflightnewsapi.net/v3/articles",
  headers: {
    'Content-Type': 'application/json'
  })

  article_data = JSON.parse(resp.body)
  articles = article_data
  puts articles

articles.each do |blog|
  Article.create({
    featured: blog["featured"],
    title: blog["title"],
    url: blog["url"],
    imageUrl: blog["imageUrl"],
    newsSite: blog["newsSite"],
    summary: blog["summary"],
    publishedAt: blog["publishedAt"],
    launches: blog["launches"],
    events: blog["events"]

})
end