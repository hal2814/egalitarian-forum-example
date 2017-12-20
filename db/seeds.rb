class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_posts
  end

  def generate_users
    30.times do |i|
      user = User.create!(name: Faker::LordOfTheRings.character,
                          email: Faker::Internet.email,
                          password: Faker::Internet.password)
    end
  end

  def generate_posts
    30.times do |i|
      post = Post.create!(title: Faker::Book.title,
                          content: Faker::Hipster.sentence(5),
                          thumbnail: Faker::Fillmurray.image)
      post.save!
    end
  end

end

p "Created #{Post.count} posts"

Seed.begin
