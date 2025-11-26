# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(email: "example@example.com", password: "password", password_confirmation: "password")
# user = User.last

cv = Cv.new(title: "My epic cv title", content: "Yeah so this is my amazing cv, and it's the greatest so that's pretty cool isn't it")
cv.user = user
#user_id = user.id
cv.save!

chat = Chat.new(job_title: "The job title", job_description: "The job description where some devs make some stuff and it's kind of cool")
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
