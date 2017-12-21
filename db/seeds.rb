class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_posts
    seed.generate_comments
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
                          thumbnail: Faker::Fillmurray.image,
                          user_id: rand(User.first.id..User.last.id))
    end
  end

  def generate_votes
    100.times do |i|
      post = Post.find(rand((Post.first.id)..(Post.last.id)))
      user = User.find()
    end
  end

  def generate_comments
    60.times do |i|
      post = Comment.create!(content: Faker::Hipster.sentence(5),
                          user_id: rand(User.first.id..User.last.id),
                          post_id: rand(Post.first.id..Post.last.id))
    end
  end

end

p "Created #{User.count} users"
p "Created #{Post.count} posts"
p "Created #{Comment.count} comments"

Seed.begin
