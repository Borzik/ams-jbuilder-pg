# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
def create_post
  Post.create(
    title: Faker::Company.catch_phrase,
    text: Faker::Lorem.paragraphs(3).join('\n'),
    author_name: Faker::Name.name,
    author_email: Faker::Internet.email
  )
end

ActiveRecord::Base.transaction do
  n = 0
  1000.times do
    create_post
    n += 1
    if n % 10 == 0
      puts n
    end
  end
  puts 'done!'
end
