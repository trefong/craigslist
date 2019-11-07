# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# articles = [
#   [ "Article 1", "testing testing testing" ],
#   [ "Article 2", "test test test" ],
#   [ "Article 3", "test text test text test text" ],
#   [ "Article 4", "text text text text text" ]
# ]

# articles.each do |title, body|
#   Article.create( title: title, body: body )
# end



categories = [
    "Category 1",
    "Category 2",
    "Category 3",
    "Category 4",
    "Category 5",
    "Category 6"
]

categories.each do |title|
    Category.create( title: title)
end