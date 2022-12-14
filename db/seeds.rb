puts ":seedling: Seeding spices..."
# Seed your database here
# seed through articles table
10.times do Article.create(
    title: Faker::Book.title,
    image_url: Faker::LoremFlickr.image,
    content: Faker::Lorem.paragraph
    )
end
# seed through users table
10.times do User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end
# seed through testimonials table
10.times do Testimonial.create(
    testimony: Faker::Lorem.paragraph,
    article_id: Article.all.sample.id,
    user_id: User.all.sample.id
    )
end
puts ":white_check_mark: Done seeding!"