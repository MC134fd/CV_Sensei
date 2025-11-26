# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing old data..."
Message.delete_all
Chat.delete_all
Cv.delete_all
User.delete_all

puts "Seeding..."

user = User.create(email: "example@example.com", password: "password", password_confirmation: "password")
# user = User.last

cv = Cv.new(title: "Back-end Software Developer", content: "Experienced software engineer with a focus on high-performance backend systems")
cv = Cv.new(title: "Marketing Role CV", content: "Marketing specialist with expertise in brand strategy and campaign execution")
cv = Cv.new(title: "Product Manager Role", content: "Product manager skilled in roadmap planning and stakeholder collaboration")
cv = Cv.new(title: "UX Designer", content: "UX designer passionate about accessible and intuitive digital experiences")
cv = Cv.new(title: "Full Stack CV", content: "Full-stack developer proficient in Rails, React, and cloud services")
cv = Cv.new(title: "Data Analyst Role CV", content: "Data analyst with strong SQL and dashboard-building experience")

cv.user = user
#user_id = user.id
cv.save!

chat = Chat.new(job_title: "The job title", job_description: "The job description where some devs make some stuff and it's kind of cool")
chat = Chat.new()


chat.cv = cv
chat.user = user
#chat.user_id = user.id
chat.save!

5.times do
  user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
  user_message.chat = chat
  user_message.save!
  assistant_message = Message.new(role: "assistant", content: "Nah, it's a good start. The main tip is.")
  assistant_message.chat = chat
  assistant_message.save!
end
