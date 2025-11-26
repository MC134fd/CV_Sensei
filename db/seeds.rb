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

puts "Creating CVs..."

cv = Cv.new(title: "Back-end Software Developer", content: "Experienced software engineer with a focus on high-performance backend systems")
cv1 = Cv.new(title: "Marketing Role CV", content: "Marketing specialist with expertise in brand strategy and campaign execution")
cv2 = Cv.new(title: "Product Manager Role", content: "Product manager skilled in roadmap planning and stakeholder collaboration")
# cv3 = Cv.new(title: "UX Designer", content: "UX designer passionate about accessible and intuitive digital experiences")
# cv4 = Cv.new(title: "Full Stack CV", content: "Full-stack developer proficient in Rails, React, and cloud services")
# cv5 = Cv.new(title: "Data Analyst Role CV", content: "Data analyst with strong SQL and dashboard-building experience")

cv.user = user
cv.save!
cv1.user = user
cv1.save!
cv2.user = user
cv2.save!

puts "Creating Chat..."


#CV / CHAT / USER_MESSAGE, USER_MESSAGE1, USER_MESSAGE2

chat = Chat.new(job_title: "Back-end Software Developer", job_description: "Develop and maintain server-side logic: Write code that handles the application's core functions, user input, and data processing.
Manage databases: Design, implement, and maintain databases that store and manage application data.
Create APIs: Build Application Programming Interfaces (APIs) to allow the front-end, back-end, and external services to communicate with each other.")
chat.cv = cv
chat.user = user
chat.save!

user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message.chat = chat
user_message.save!
assistant_message = Message.new(role: "assistant", content: "It's good, it just needs more of ... ")
assistant_message.chat = chat
assistant_message.save!

user_message1 = Message.new(role: "user", content: "How about if I talk a bit more about my experience in Ruby?")
user_message1.chat = chat
user_message1.save!
assistant_message1 = Message.new(role: "assistant", content: "Yes I think that's a great idea! You can add more about which frameworks you're familiar with in the skills section of your CV")
assistant_message1.chat = chat
assistant_message1.save!

user_message2 = Message.new(role: "user", content: "Should I add my hobbies and interests?")
user_message2.chat = chat
user_message2.save!
assistant_message2 = Message.new(role: "assistant", content: "Nobody cares about that!")
assistant_message2.chat = chat
assistant_message2.save!

puts "Creating Chat 1..."

#CV1 / CHAT1 / USER_MESSAGE3, USER_MESSAGE4, USER_MESSAGE5

chat1 = Chat.new(job_title: "Marketing Manager", job_description: "A marketing manager is responsible for developing and implementing marketing strategies to promote a brand or product, which includes market research, campaign planning, budget management, and team leadership.")
chat1.cv = cv1
chat1.user = user
chat1.save!

user_message3 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message3.chat = chat1
user_message3.save!
assistant_message3 = Message.new(role: "assistant", content: "It's good, it just needs more of your experience working on events and showcases!")
assistant_message3.chat = chat1
assistant_message3.save!

user_message4 = Message.new(role: "user", content: "How specific should I be in that section?")
user_message4.chat = chat1
user_message4.save!
assistant_message4 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add specific KPIs and indications of the scale of the events you worked on.")
assistant_message4.chat = chat1
assistant_message4.save!

user_message5 = Message.new(role: "user", content: "Do I need to add my eduation?")
user_message5.chat = chat1
user_message5.save!
assistant_message5 = Message.new(role: "assistant", content: "Yes, you definitely need to talk about your education background. I recommend adding a separate education section.")
assistant_message5.chat = chat1
assistant_message5.save!

puts "Creating Chat 2..."

#CV2 / CHAT2 / USER_MESSAGE6, USER_MESSAGE7, USER_MESSAGE8

chat2 = Chat.new(job_title: "Product Manager", job_description: "Product strategy and vision: Develop and maintain the product vision and strategy, aligning it with business objectives and market opportunities.
Roadmap and backlog management: Create and prioritize the product roadmap and backlog, ensuring the development team is focused on the most valuable features and tasks.
Cross-functional collaboration: Work closely with a multidisciplinary team, including engineers, designers, marketers, and executives, to guide the product's development and launch.")
chat2.cv = cv2
chat2.user = user
chat2.save!

user_message6 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message6.chat = chat2
user_message6.save!
assistant_message6 = Message.new(role: "assistant", content: "It is not very long at all - I think you need to be more elaborate about your work experience. Why don't you start by adding that in?")
assistant_message6.chat = chat2
assistant_message6.save!

user_message7 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?")
user_message7.chat = chat2
user_message7.save!
assistant_message7 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.")
assistant_message7.chat = chat2
assistant_message7.save!

user_message8 = Message.new(role: "user", content: "Is it important to add my contact details?")
user_message8.chat = chat2
user_message8.save!
assistant_message8 = Message.new(role: "assistant", content: "They will definitely need that to get in touch with you.")
assistant_message8.chat = chat2
assistant_message8.save!



# 5.times do
#   user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
#   user_message.chat = chat
#   user_message.save!
#   assistant_message = Message.new(role: "assistant", content: "Nah, it's a good start. The main tip is.")
#   assistant_message.chat = chat
#   assistant_message.save!
# end
