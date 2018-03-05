@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow"
                    phone: "2242191476")

puts "1 user created"

AdminUser.create(email: "myadmin@test.com", 
                 password: "password", 
                 password_confirmation: "password", 
                 first_name: "Matt", 
                 last_name: "Mo"
                 phone: "2242191476")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, 
               rationale: "#{post} rationale content", 
               user_id: @user.id, 
               overtime_request: 2.5)
end

puts "100 posts were just made"