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
cv3 = Cv.new(title: "UX Designer", content: "UX designer passionate about accessible and intuitive digital experiences")
cv4 = Cv.new(title: "Full Stack CV", content: "Full-stack developer proficient in Rails, React, and cloud services")
cv5 = Cv.new(title: "Data Analyst Role CV", content: "Data analyst with strong SQL and dashboard-building experience")

cv.user = user
cv.save!
cv1.user = user
cv1.save!
cv2.user = user
cv2.save!
cv3.user = user
cv3.save!
cv4.user = user
cv4.save!
cv5.user = user
cv5.save!


puts "Creating chat 1..."
#CV / CHAT1 / USER_MESSAGE, USER_MESSAGE1, USER_MESSAGE2, USER_MESSAGE3, USER_MESSAGE4
chat1 = Chat.new(job_title: "Back-end Software Developer", job_description: "Develop and maintain server-side logic: Write code that handles the application's core functions, user input, and data processing.
Manage databases: Design, implement, and maintain databases that store and manage application data.
Create APIs: Build Application Programming Interfaces (APIs) to allow the front-end, back-end, and external services to communicate with each other.")
chat1.cv = cv
chat1.user = user
chat1.title = " Back-end software developer"
chat1.save!
user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.", input_count: 1)
user_message.chat = chat1
user_message.save!
assistant_message = Message.new(role: "assistant", content: "It's good, it just needs more of ... ", input_count: 1)
assistant_message.chat = chat1
assistant_message.save!
user_message1 = Message.new(role: "user", content: "How about if I talk a bit more about my experience in Ruby?", input_count: 1)
user_message1.chat = chat1
user_message1.save!
assistant_message1 = Message.new(role: "assistant", content: "Yes I think that's a great idea! You can add more about which frameworks you're familiar with in the skills section of your CV", input_count: 1)
assistant_message1.chat = chat1
assistant_message1.save!
user_message2 = Message.new(role: "user", content: "Should I add my hobbies and interests?", input_count: 1)
user_message2.chat = chat1
user_message2.save!
assistant_message2 = Message.new(role: "assistant", content: "Nobody cares about that!", input_count: 1)
assistant_message2.chat = chat1
assistant_message2.save!
user_message3 = Message.new(role: "user", content: "Do I need to add my name on this?", input_count: 1)
user_message3.chat = chat1
user_message3.save!
assistant_message3 = Message.new(role: "assistant", content: "Yes, how else will they know your name!", input_count: 1)
assistant_message3.chat = chat1
assistant_message3.save!
user_message4 = Message.new(role: "user", content: "Is there anything else that you would recommend me adding?", input_count: 1)
user_message4.chat = chat1
user_message4.save!
assistant_message4 = Message.new(role: "assistant", content: "I think tailor it a little more to your experience managing databases. Can you share some more stats on that?", input_count: 1)
assistant_message4.chat = chat1
assistant_message4.save!

puts "Creating chat 2..."
#CV / CHAT2 / USER_MESSAGE5, USER_MESSAGE6, USER_MESSAGE7, USER_MESSAGE8, USER_MESSAGE9

chat2 = Chat.new(job_title: "Full-stack Ruby Developer", job_description: "A Full Stack Ruby Developer job involves building and maintaining web applications using the Ruby on Rails framework, handling both front-end and back-end development tasks. Responsibilities include writing clean Ruby and JavaScript code, integrating databases, developing APIs, creating responsive user interfaces, ensuring application performance, and collaborating with cross-functional teams throughout the development lifecycle.")
chat2.cv = cv
chat2.user = user
chat2.title = "Developer (Ruby: full-stack)"
chat2.save!

user_message5 = Message.new(role: "user", content: "How can I make sure that my experience in Ruby shines through?", input_count: 1)
user_message5.chat = chat2
user_message5.save!
assistant_message5 = Message.new(role: "assistant", content: "What is your Ruby experience? Have you added it into the CV?", input_count: 1)
assistant_message5.chat = chat2
assistant_message5.save!
user_message6 = Message.new(role: "user", content: "I have maintained web applications, should I include that?", input_count: 1)
user_message6.chat = chat2
user_message6.save!
assistant_message6 = Message.new(role: "assistant", content: "Yes I think that's a great idea! And if you have experience with other frameworks you can also add that into your CV", input_count: 1)
assistant_message6.chat = chat2
assistant_message6.save!
user_message7 = Message.new(role: "user", content: "Do I add my JavaScript experience?", input_count: 1)
user_message7.chat = chat2
user_message7.save!
assistant_message7 = Message.new(role: "assistant", content: "Definitely, JavaScript is mentioned in the job description so do add that.", input_count: 1)
assistant_message7.chat = chat2
assistant_message7.save!
user_message8 = Message.new(role: "user", content: "Thank you!", input_count: 1)
user_message8.chat = chat2
user_message8.save!
assistant_message8 = Message.new(role: "assistant", content: "No problem!", input_count: 1)
assistant_message8.chat = chat2
assistant_message8.save!

puts "Creating chat 3..."
#CV / CHAT3 / USER_MESSAGE9, USER_MESSAGE10, USER_MESSAGE11, USER_MESSAGE12, USER_MESSAGE13

chat3 = Chat.new(job_title: "Junior Front-End Dev", job_description: "A junior front-end developer's job description involves coding and maintaining websites and web applications, collaborating with senior developers and designers, and implementing user interfaces based on signed-off designs. Key responsibilities include writing clean HTML, CSS, and JavaScript, ensuring web standards and accessibility, and learning new technologies like frameworks (e.g., React, Vue) and RESTful APIs under the guidance of senior staff.")
chat3.cv = cv
chat3.user = user
chat3.title = "Junior level engineer"
chat3.save!

user_message9 = Message.new(role: "user", content: "Do I need to code for this job?", input_count: 1)
user_message9.chat = chat3
user_message9.save!
assistant_message9 = Message.new(role: "assistant", content: "Yes, this is a junior front-end developer so you do need to be able to code", input_count: 1)
assistant_message9.chat = chat3
assistant_message9.save!
user_message10 = Message.new(role: "user", content: "I have maintained web applications, should I include that?", input_count: 1)
user_message10.chat = chat3
user_message10.save!
assistant_message10 = Message.new(role: "assistant", content: "Yes I think that's a great idea! And if you have experience with other frameworks you can also add that into your CV", input_count: 1)
assistant_message10.chat = chat3
assistant_message10.save!
user_message11 = Message.new(role: "user", content: "Do I add my JavaScript experience?", input_count: 1)
user_message11.chat = chat3
user_message11.save!
assistant_message11 = Message.new(role: "assistant", content: "Definitely, but I also think add your HTML experience.", input_count: 1)
assistant_message11.chat = chat3
assistant_message11.save!
user_message12 = Message.new(role: "user", content: "What else do you think I should add?", input_count: 1)
user_message12.chat = chat3
user_message12.save!
assistant_message12 = Message.new(role: "assistant", content: "Any collaboration experience would be great to add - share a little about which teams you've collaborated with in the past, and any experience working between teams.", input_count: 1)
assistant_message12.chat = chat3
assistant_message12.save!

puts "Creating chat 4..."
#CV1 / CHAT4 / USER_MESSAGE13, USER_MESSAGE14, USER_MESSAGE15, USER_MESSAGE16, USER_MESSAGE17
chat4 = Chat.new(job_title: "Marketing Manager", job_description: "A marketing manager is responsible for developing and implementing marketing strategies to promote a brand or product, which includes market research, campaign planning, budget management, and team leadership.")
chat4.cv = cv1
chat4.user = user
chat4.title = "Marketing manager role application"
chat4.save!

user_message13 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.", input_count: 1)
user_message13.chat = chat4
user_message13.save!
assistant_message13 = Message.new(role: "assistant", content: "It's good, it just needs more of your experience working on events and showcases!", input_count: 1)
assistant_message13.chat = chat4
assistant_message13.save!
user_message14 = Message.new(role: "user", content: "How specific should I be in that section?", input_count: 1)
user_message14.chat = chat4
user_message14.save!
assistant_message14 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add specific KPIs and indications of the scale of the events you worked on.", input_count: 1)
assistant_message14.chat = chat4
assistant_message14.save!
user_message15 = Message.new(role: "user", content: "Do I need to add my eduation?", input_count: 1)
user_message15.chat = chat4
user_message15.save!
assistant_message15 = Message.new(role: "assistant", content: "Yes, you definitely need to talk about your education background. I recommend adding a separate education section.", input_count: 1)
assistant_message15.chat = chat4
assistant_message15.save!
user_message16 = Message.new(role: "user", content: "How about other languages that I speak?", input_count: 1)
user_message16.chat = chat4
user_message16.save!
assistant_message16 = Message.new(role: "assistant", content: "I think you should include those too, because you never know if that could help in reaching other audiences or markets?", input_count: 1)
assistant_message16.chat = chat4
assistant_message16.save!
user_message17 = Message.new(role: "user", content: "Anything else?", input_count: 1)
user_message17.chat = chat4
user_message17.save!
assistant_message17 = Message.new(role: "assistant", content: "If you can use any tools or softwares that might be good to include too, mentioning the names specifically of those that you are familiar with?", input_count: 1)
assistant_message17.chat = chat4
assistant_message17.save!

puts "Creating chat 5..."
#CV1 / CHAT5 / USER_MESSAGE18, USER_MESSAGE19, USER_MESSAGE20, USER_MESSAGE21, USER_MESSAGE22
chat5 = Chat.new(job_title: "Event Marketing Manager", job_description: "An Event Marketing Manager plans, organizes, and executes events like conferences and trade shows to support marketing and business goals, such as brand awareness, lead generation, and pipeline growth. Key responsibilities include developing event strategies, managing budgets and timelines, coordinating with vendors, promoting events across multiple channels, and analyzing performance to measure return on investment (ROI). This role requires strong project management, communication, and organizational skills, as well as creativity and a strategic marketing mindset.")
chat5.cv = cv1
chat5.user = user
chat5.title = "Event marketing manager resume"
chat5.save!

user_message18 = Message.new(role: "user", content: "I think my CV is already perfect but my friend made me add my CV into this new web app.", input_count: 1)
user_message18.chat = chat5
user_message18.save!
assistant_message18 = Message.new(role: "assistant", content: "It's good, it just needs more of your experience working on events and showcases, can you include more of your work experience?", input_count: 1)
assistant_message18.chat = chat5
assistant_message18.save!
user_message19 = Message.new(role: "user", content: "How specific should I be in that section?", input_count: 1)
user_message19.chat = chat5
user_message19.save!
assistant_message19 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of attendees and revenue of any events that you have organised in the past. Do you have that kind of information to add in?", input_count: 1)
assistant_message19.chat = chat5
assistant_message19.save!
user_message20 = Message.new(role: "user", content: "Do I need to add my eduation?", input_count: 1)
user_message20.chat = chat5
user_message20.save!
assistant_message20 = Message.new(role: "assistant", content: "Yes, you definitely need to talk about your education background. I recommend adding a separate education section.", input_count: 1)
assistant_message20.chat = chat5
assistant_message20.save!
user_message21 = Message.new(role: "user", content: "How about other languages that I speak?", input_count: 1)
user_message21.chat = chat5
user_message21.save!
assistant_message21 = Message.new(role: "assistant", content: "I think you should include those too, because you never know if that could help in reaching other audiences or markets?", input_count: 1)
assistant_message21.chat = chat5
assistant_message21.save!
user_message22 = Message.new(role: "user", content: "Anything else?", input_count: 1)
user_message22.chat = chat5
user_message22.save!
assistant_message22 = Message.new(role: "assistant", content: "If you can use any tools or softwares that might be good to include too, mentioning the names specifically of those that you are familiar with?", input_count: 1)
assistant_message22.chat = chat5
assistant_message22.save!

puts "Creating chat 6..."
#CV2 / CHAT6 / USER_MESSAGE23, USER_MESSAGE24, USER_MESSAGE25, USER_MESSAGE26, USER_MESSAGE27
chat6 = Chat.new(job_title: "Product Manager", job_description: "Product strategy and vision: Develop and maintain the product vision and strategy, aligning it with business objectives and market opportunities.
Roadmap and backlog management: Create and prioritize the product roadmap and backlog, ensuring the development team is focused on the most valuable features and tasks.
Cross-functional collaboration: Work closely with a multidisciplinary team, including engineers, designers, marketers, and executives, to guide the product's development and launch.")
chat6.cv = cv2
chat6.user = user
chat6.title = "Product strategy manager"
chat6.save!

user_message23 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.", input_count: 1)
user_message23.chat = chat6
user_message23.save!
assistant_message23 = Message.new(role: "assistant", content: "It is not very long at all - I think you need to be more elaborate about your work experience. Why don't you start by adding that in?", input_count: 1)
assistant_message23.chat = chat6
assistant_message23.save!
user_message24 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?", input_count: 1)
user_message24.chat = chat6
user_message24.save!
assistant_message24 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.", input_count: 1)
assistant_message24.chat = chat6
assistant_message24.save!
user_message25 = Message.new(role: "user", content: "Is it important to add my contact details?", input_count: 1)
user_message25.chat = chat6
user_message25.save!
assistant_message25 = Message.new(role: "assistant", content: "They will definitely need that to get in touch with you.", input_count: 1)
assistant_message25.chat = chat6
assistant_message25.save!
user_message26 = Message.new(role: "user", content: "If I've worked on cross-team collaboration before, should I include that?", input_count: 1)
user_message26.chat = chat6
user_message26.save!
assistant_message26 = Message.new(role: "assistant", content: "Definitely include that. Particularly if you have experience working with engineers, designers, marketers, and executives that's really important to include.", input_count: 1)
assistant_message26.chat = chat6
assistant_message26.save!
user_message27 = Message.new(role: "user", content: "Is there anything else I should add?", input_count: 1)
user_message27.chat = chat6
user_message27.save!
assistant_message27 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of attendees and revenue of any events that you have organised in the past. Do you have that kind of information to add in?", input_count: 1)
assistant_message27.chat = chat6
assistant_message27.save!

puts "Creating chat 7..."
#CV2 / CHAT7 / USER_MESSAGE28, USER_MESSAGE29, USER_MESSAGE30, USER_MESSAGE31, USER_MESSAGE32
chat7 = Chat.new(job_title: "Product Marketing Manager", job_description: "A Product Marketing Manager (PMM) is responsible for bringing a product to market by defining its positioning, messaging, and go-to-market strategy. Key duties include conducting market and competitor research, developing launch plans, creating sales and marketing collateral, and working with product, sales, and marketing teams to ensure the product's commercial success. The role is at the intersection of product, sales, and marketing, with a focus on telling the product's story and converting audiences into loyal customers.")
chat7.cv = cv2
chat7.user = user
chat7.title = "Experienced product marketing manager"
chat7.save!

user_message28 = Message.new(role: "user", content: "I do think that this is the greatest CV in the whole world, but I really want this product marketing manager job. Is there anything that you can suggest?", input_count: 1)
user_message28.chat = chat7
user_message28.save!
assistant_message28 = Message.new(role: "assistant", content: "The most important thing is whether you have any similar experience to product marketing? Including any experience like this is relevant and important.", input_count: 1)
assistant_message28.chat = chat7
assistant_message28.save!
user_message29 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?", input_count: 1)
user_message29.chat = chat7
user_message29.save!
assistant_message29 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.", input_count: 1)
assistant_message29.chat = chat7
assistant_message29.save!
user_message30 = Message.new(role: "user", content: "Is it important to add my contact details?", input_count: 1)
user_message30.chat = chat7
user_message30.save!
assistant_message30 = Message.new(role: "assistant", content: "They will definitely need that to get in touch with you.", input_count: 1)
assistant_message30.chat = chat7
assistant_message30.save!
user_message31 = Message.new(role: "user", content: "I worked in sales for a little bit, should I add that?", input_count: 1)
user_message31.chat = chat7
user_message31.save!
assistant_message31 = Message.new(role: "assistant", content: "Definitely include that. Particularly if you have experience in a similar industry or field - that will be good for any potential future employers to know!", input_count: 1)
assistant_message31.chat = chat7
assistant_message31.save!
user_message32 = Message.new(role: "user", content: "Is there anything else I should add?", input_count: 1)
user_message32.chat = chat7
user_message32.save!
assistant_message32 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of KPIs or targets met. That is something that companies love to see.", input_count: 1)
assistant_message32.chat = chat7
assistant_message32.save!

puts "Creating chat 8..."
#CV2 / CHAT8 / USER_MESSAGE33, USER_MESSAGE34, USER_MESSAGE35, USER_MESSAGE36, USER_MESSAGE37
chat8 = Chat.new(job_title: "Business Development Manager", job_description: "Identify new business opportunities: Researching organizations and markets to find potential clients and new revenue streams.
Generate leads: Using methods like cold calling, networking, and attending events to find and qualify new prospects.
Build and maintain relationships: Cultivating strong, long-term relationships with clients, partners, and other stakeholders.")
chat8.cv = cv2
chat8.user = user
chat8.title = "Business development executive application"
chat8.save!

user_message33 = Message.new(role: "user", content: "I want to make sure that my CV is as tailored as possible.", input_count: 1)
user_message33.chat = chat8
user_message33.save!
assistant_message33 = Message.new(role: "assistant", content: "The most important thing is whether you have any similar experience to this role? Including any experience like this is relevant and important.", input_count: 1)
assistant_message33.chat = chat8
assistant_message33.save!
user_message34 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?", input_count: 1)
user_message34.chat = chat8
user_message34.save!
assistant_message34 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.", input_count: 1)
assistant_message34.chat = chat8
assistant_message34.save!
user_message35 = Message.new(role: "user", content: "Shall I let them know that I used to work as a sales executive for a SaaS company?", input_count: 1)
user_message35.chat = chat8
user_message35.save!
assistant_message35 = Message.new(role: "assistant", content: "Yes! That's extremely relevant. I recommend adding more information about that and making sure that you've shared your past responsibilities in your role and your achievements.", input_count: 1)
assistant_message35.chat = chat8
assistant_message35.save!
user_message36 = Message.new(role: "user", content: "What else do you think I could add?", input_count: 1)
user_message36.chat = chat8
user_message36.save!
assistant_message36 = Message.new(role: "assistant", content: "Have you attended any networking events or do you have experience in networking? This is good to include too.", input_count: 1)
assistant_message36.chat = chat8
assistant_message36.save!
user_message37 = Message.new(role: "user", content: "Is there anything else I should add?", input_count: 1)
user_message37.chat = chat8
user_message37.save!
assistant_message37 = Message.new(role: "assistant", content: "The job spec mentinos relationship building, if there is anything that you can include on this that would be really helpful. For example whether you have long-term client relationship building experience, or if you have any experience in building partnerships.", input_count: 1)
assistant_message37.chat = chat8
assistant_message37.save!

puts "Done! DB Seeding successful :)"

# 5.times do
#   user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.", input_count: 1)
#   user_message.chat = chat
#   user_message.save!
#   assistant_message = Message.new(role: "assistant", content: "Nah, it's a good start. The main tip is.", input_count: 1)
#   assistant_message.chat = chat
#   assistant_message.save!
# end
