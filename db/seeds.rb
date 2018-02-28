@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 user created"

AdminUser.create(email: "myadmin@test.com", password: "password", password_confirmation: "password", first_name: "Matt", last_name: "Mo")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "Holy FUCK 100 posts were just made!!"