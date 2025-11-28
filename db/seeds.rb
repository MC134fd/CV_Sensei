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

cv = Cv.new(title: "Back-end Software Developer", content: "Profile\n\nBack-end Developer with 5+ years’ experience building scalable APIs and distributed systems. Strong focus on performance, clean architecture, and secure data handling. Experienced partnering with front-end and product teams to deliver reliable, high-quality software.\n\n\nKey Skills\n\nRuby on Rails\nNode.js\nPostgreSQL / MySQL\nRedis / Sidekiq\nAPI Design (REST, GraphQL)\nTest-Driven Development\nMicroservices\nDocker / Kubernetes\nCI/CD Pipelines\n\n\nExperience\n\nBack-end Software Developer\nTechCore Solutions, London\n2021 – Present\n- Designed and maintained REST APIs used by over 200k monthly users.\n- Migrated legacy services to a microservice architecture, reducing system downtime by 30%.\n- Improved query performance across key endpoints by up to 40%.\n- Implemented background job processing with Sidekiq, improving throughput for async tasks.\n\nJunior Back-end Developer\nCloudSphere Ltd, Manchester\n2018 – 2021\n- Built internal services in Node.js and maintained database schemas.\n- Added integration tests and improved code coverage by 25%.\n- Supported cross-functional teams with debugging and incident response.\n\n\nEducation\n\nBSc (Hons) Computer Science\nUniversity of Leeds | 2018\n\n\nTools\n\nRuby, Node.js, PostgreSQL, Redis, Docker, Kubernetes, AWS, GitHub, CI/CD")
cv1 = Cv.new(title: "Marketing Role CV", content: "Profile\n\nMarketing Executive with 3+ years’ experience in digital marketing, content strategy, and campaign optimisation. Strong analytical mindset with a track record of improving conversion rates and increasing brand engagement across multiple channels.\n\n\nKey Skills\n\nDigital Marketing\nSocial Media Strategy\nGoogle Analytics\nEmail Marketing (Mailchimp, HubSpot)\nSEO & SEM\nCopywriting\nCampaign Reporting\nBrand Management\n\n\nExperience\n\nMarketing Executive\nBrightMark Media, London\n2021 – Present\n- Managed multi-channel campaigns that increased lead generation by 22%.\n- Created social content calendar and boosted engagement by 40% in 6 months.\n- Ran A/B tests on landing pages that improved conversion rates by 12%.\n- Produced monthly performance reports for stakeholders.\n\nMarketing Assistant\nGreenLeaf Co., Bristol\n2019 – 2021\n- Supported SEO content production and keyword research.\n- Executed email campaigns to over 10,000 subscribers.\n- Coordinated events and partnerships with external agencies.\n\n\nEducation\n\nBA (Hons) Marketing & Communications\nUniversity of Bristol | 2019\n\n\nTools\n\nGoogle Analytics, HubSpot, Mailchimp, Canva, Hootsuite, WordPress")
cv2 = Cv.new(title: "Product Manager Role", content: "Profile\n\nProduct Manager with 4+ years’ experience delivering B2B and SaaS products. Strong background in user research, roadmap planning and working closely with engineering and design teams to ship meaningful features. Comfortable operating in fast-paced, agile environments.\n\n\nKey Skills\n\nProduct Roadmapping\nUser Research & UX Collaboration\nAgile Delivery (Scrum/Kanban)\nData Analysis (SQL, Mixpanel)\nA/B Testing\nStakeholder Management\nRequirements Gathering\n\n\nExperience\n\nProduct Manager\nFinSight Ltd, London\n2021 – Present\n- Own the roadmap for customer onboarding, improving activation rate by 18%.\n- Lead a cross-functional squad (Engineering, Design, QA) to deliver features from discovery to release.\n- Run user interviews and usability tests to identify product opportunities and refine requirements.\n-Collaborate with commercial teams on feature launches and customer communications.\n\nAssociate Product Manager\nBrightWave Software, London\n2019 – 2021\n- Supported senior PMs with user research, analytics, and writing user stories.\n- Delivered improvements to the dashboard UX, reducing support tickets by 25%.\n- Worked with engineering to define requirements for new API integrations used by enterprise clients.\n\n\nEducation\n\nBSc (Hons) Business Information Systems\nUniversity of Manchester | 2019\n\n\nTools\n\nJira, Linear, Figma, Mixpanel, Amplitude, Notion")
cv3 = Cv.new(title: "Senior UX Designer", content: "Profile\n\nSenior UX Designer with 7+ years’ experience creating user-centred digital experiences. Skilled in discovery research, prototyping, interaction design, and collaborating closely with product and engineering teams to deliver intuitive, accessible interfaces.\n\n\nKey Skills\n\nUser Research\nInteraction Design\nWireframing & Prototyping\nInformation Architecture\nDesign Systems\nUsability Testing\nFigma / Sketch\nAccessibility (WCAG)\n\n\nExperience\n\nSenior UX Designer\nNovaDigital, London\n2020 – Present\n- Led UX for the company’s flagship app used by 500k+ users.\n- Conducted user research and usability tests to improve task success by 30%.\n- Built scalable design system components in partnership with front-end developers.\n- Mentored junior designers through critique and career development.\n\nUX Designer\nVisionTech, Cambridge\n2016 – 2020\n- Delivered end-to-end designs across web and mobile products.\n- Collaborated with PMs to define user journeys and refine product requirements.\n- Created prototypes used in stakeholder workshops and development planning.\n\n\nEducation\n\nBA (Hons) Digital Media Design\nUniversity of the Arts London | 2016\n\n\nTools\n\nFigma, Sketch, Miro, InVision, UX Research Tools, Notion")
cv4 = Cv.new(title: "Full Stack Dev", content: "Profile\n\nFull Stack Developer with 4+ years’ experience building responsive web applications. Strong in both front-end and back-end development, with a focus on clean code, performance, and creating smooth user experiences.\n\n\nKey Skills\n\nJavaScript / TypeScript\nReact / Next.js\nNode.js / Express\nHTML / CSS\nMongoDB / PostgreSQL\nREST & GraphQL APIs\nAutomated Testing\nAgile Delivery\n\n\nExperience\n\nFull Stack Developer\nUrbanTech Ltd, London\n2021 – Present\n- Built front-end features in React and optimised load times by 35%.\n- Developed scalable Node.js APIs and integrated third-party services.\n- Implemented CI pipelines and improved deployment workflows.\n- Worked closely with designers to refine UI/UX interactions.\n\nJunior Full Stack Developer\nPixelWorks Studio, Birmingham\n2019 – 2021\n- Contributed to both front-end and back-end tasks on client projects.\n- Wrote test suites for key components, improving reliability and reducing regressions.\n- Participated in sprint ceremonies and collaborated with cross-functional teams.\n\n\nEducation\n\nBSc (Hons) Software Engineering\nAston University | 2019\n\n\nTools\n\nReact, Node.js, Next.js, PostgreSQL, MongoDB, GitHub, Docker")
cv5 = Cv.new(title: "Data Analyst Role", content: "Profile\n\nData Analyst with 3+ years’ experience leveraging data to drive business decisions. Skilled in SQL, dashboarding, and communicating insights to technical and non-technical stakeholders. Strong attention to detail and a passion for problem-solving.\n\n\nKey Skills\n\nSQL\nPython (Pandas)\nData Visualisation (Tableau, Power BI)\nDashboard Development\nA/B Testing\nETL Processes\nReporting & Insights\nExcel (Advanced)\n\n\nExperience\n\nData Analyst\nInsightWorks Ltd, London\n2021 – Present\n- Built and maintained dashboards used by product and operations teams.\n- Analysed customer behaviour data, contributing to a 10% decrease in churn.\n- Automated weekly reporting, reducing manual work by 6+ hours per week.\n- Ran A/B test analysis to support product decisions.\n\nJunior Data Analyst\nMetroTech, Manchester\n2019 – 2021\n- Wrote SQL queries to support analytics requests across departments.\n- Cleaned and validated datasets for internal reporting.\n- Assisted with migration of BI dashboards to Power BI.\n\n\nEducation\n\nBSc (Hons) Data Science\nLancaster University | 2019\n\n\nTools\n\nSQL, Python, Tableau, Power BI, Excel, Looker Studio"
)

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
user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message.chat = chat1
user_message.save!
assistant_message = Message.new(role: "assistant", content: "It's good, it just needs more of ... ")
assistant_message.chat = chat1
assistant_message.save!
user_message1 = Message.new(role: "user", content: "How about if I talk a bit more about my experience in Ruby?")
user_message1.chat = chat1
user_message1.save!
assistant_message1 = Message.new(role: "assistant", content: "Yes I think that's a great idea! You can add more about which frameworks you're familiar with in the skills section of your CV")
assistant_message1.chat = chat1
assistant_message1.save!
user_message2 = Message.new(role: "user", content: "Should I add my hobbies and interests?")
user_message2.chat = chat1
user_message2.save!
assistant_message2 = Message.new(role: "assistant", content: "Nobody cares about that!")
assistant_message2.chat = chat1
assistant_message2.save!
user_message3 = Message.new(role: "user", content: "Do I need to add my name on this?")
user_message3.chat = chat1
user_message3.save!
assistant_message3 = Message.new(role: "assistant", content: "Yes, how else will they know your name!")
assistant_message3.chat = chat1
assistant_message3.save!
user_message4 = Message.new(role: "user", content: "Is there anything else that you would recommend me adding?")
user_message4.chat = chat1
user_message4.save!
assistant_message4 = Message.new(role: "assistant", content: "I think tailor it a little more to your experience managing databases. Can you share some more stats on that?")
assistant_message4.chat = chat1
assistant_message4.save!

puts "Creating chat 2..."
#CV / CHAT2 / USER_MESSAGE5, USER_MESSAGE6, USER_MESSAGE7, USER_MESSAGE8, USER_MESSAGE9

chat2 = Chat.new(job_title: "Full-stack Ruby Developer", job_description: "A Full Stack Ruby Developer job involves building and maintaining web applications using the Ruby on Rails framework, handling both front-end and back-end development tasks. Responsibilities include writing clean Ruby and JavaScript code, integrating databases, developing APIs, creating responsive user interfaces, ensuring application performance, and collaborating with cross-functional teams throughout the development lifecycle.")
chat2.cv = cv
chat2.user = user
chat2.title = "Developer (Ruby: full-stack)"
chat2.save!

user_message5 = Message.new(role: "user", content: "How can I make sure that my experience in Ruby shines through?")
user_message5.chat = chat2
user_message5.save!
assistant_message5 = Message.new(role: "assistant", content: "What is your Ruby experience? Have you added it into the CV?")
assistant_message5.chat = chat2
assistant_message5.save!
user_message6 = Message.new(role: "user", content: "I have maintained web applications, should I include that?")
user_message6.chat = chat2
user_message6.save!
assistant_message6 = Message.new(role: "assistant", content: "Yes I think that's a great idea! And if you have experience with other frameworks you can also add that into your CV")
assistant_message6.chat = chat2
assistant_message6.save!
user_message7 = Message.new(role: "user", content: "Do I add my JavaScript experience?")
user_message7.chat = chat2
user_message7.save!
assistant_message7 = Message.new(role: "assistant", content: "Definitely, JavaScript is mentioned in the job description so do add that.")
assistant_message7.chat = chat2
assistant_message7.save!
user_message8 = Message.new(role: "user", content: "Thank you")
user_message8.chat = chat2
user_message8.save!
assistant_message8 = Message.new(role: "assistant", content: "No problem!")
assistant_message8.chat = chat2
assistant_message8.save!

puts "Creating chat 3..."
#CV / CHAT3 / USER_MESSAGE9, USER_MESSAGE10, USER_MESSAGE11, USER_MESSAGE12, USER_MESSAGE13

chat3 = Chat.new(job_title: "Junior Front-End Dev", job_description: "A junior front-end developer's job description involves coding and maintaining websites and web applications, collaborating with senior developers and designers, and implementing user interfaces based on signed-off designs. Key responsibilities include writing clean HTML, CSS, and JavaScript, ensuring web standards and accessibility, and learning new technologies like frameworks (e.g., React, Vue) and RESTful APIs under the guidance of senior staff.")
chat3.cv = cv
chat3.user = user
chat3.title = "Junior level engineer"
chat3.save!

user_message9 = Message.new(role: "user", content: "Do I need to code for this job?")
user_message9.chat = chat3
user_message9.save!
assistant_message9 = Message.new(role: "assistant", content: "Yes, this is a junior front-end developer so you do need to be able to code")
assistant_message9.chat = chat3
assistant_message9.save!
user_message10 = Message.new(role: "user", content: "I have maintained web applications, should I include that?")
user_message10.chat = chat3
user_message10.save!
assistant_message10 = Message.new(role: "assistant", content: "Yes I think that's a great idea! And if you have experience with other frameworks you can also add that into your CV")
assistant_message10.chat = chat3
assistant_message10.save!
user_message11 = Message.new(role: "user", content: "Do I add my JavaScript experience?")
user_message11.chat = chat3
user_message11.save!
assistant_message11 = Message.new(role: "assistant", content: "Definitely, but I also think add your HTML experience.")
assistant_message11.chat = chat3
assistant_message11.save!
user_message12 = Message.new(role: "user", content: "What else do you think I should add?")
user_message12.chat = chat3
user_message12.save!
assistant_message12 = Message.new(role: "assistant", content: "Any collaboration experience would be great to add - share a little about which teams you've collaborated with in the past, and any experience working between teams.")
assistant_message12.chat = chat3
assistant_message12.save!

puts "Creating chat 4..."
#CV1 / CHAT4 / USER_MESSAGE13, USER_MESSAGE14, USER_MESSAGE15, USER_MESSAGE16, USER_MESSAGE17
chat4 = Chat.new(job_title: "Marketing Manager", job_description: "A marketing manager is responsible for developing and implementing marketing strategies to promote a brand or product, which includes market research, campaign planning, budget management, and team leadership.")
chat4.cv = cv1
chat4.user = user
chat4.title = "Marketing manager role application"
chat4.save!

user_message13 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message13.chat = chat4
user_message13.save!
assistant_message13 = Message.new(role: "assistant", content: "It's good, it just needs more of your experience working on events and showcases!")
assistant_message13.chat = chat4
assistant_message13.save!
user_message14 = Message.new(role: "user", content: "How specific should I be in that section?")
user_message14.chat = chat4
user_message14.save!
assistant_message14 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add specific KPIs and indications of the scale of the events you worked on.")
assistant_message14.chat = chat4
assistant_message14.save!
user_message15 = Message.new(role: "user", content: "Do I need to add my eduation?")
user_message15.chat = chat4
user_message15.save!
assistant_message15 = Message.new(role: "assistant", content: "Yes, you definitely need to talk about your education background. I recommend adding a separate education section.")
assistant_message15.chat = chat4
assistant_message15.save!
user_message16 = Message.new(role: "user", content: "How about other languages that I speak?")
user_message16.chat = chat4
user_message16.save!
assistant_message16 = Message.new(role: "assistant", content: "I think you should include those too, because you never know if that could help in reaching other audiences or markets?")
assistant_message16.chat = chat4
assistant_message16.save!
user_message17 = Message.new(role: "user", content: "Anything else?")
user_message17.chat = chat4
user_message17.save!
assistant_message17 = Message.new(role: "assistant", content: "If you can use any tools or softwares that might be good to include too, mentioning the names specifically of those that you are familiar with?")
assistant_message17.chat = chat4
assistant_message17.save!

puts "Creating chat 5..."
#CV1 / CHAT5 / USER_MESSAGE18, USER_MESSAGE19, USER_MESSAGE20, USER_MESSAGE21, USER_MESSAGE22
chat5 = Chat.new(job_title: "Event Marketing Manager", job_description: "An Event Marketing Manager plans, organizes, and executes events like conferences and trade shows to support marketing and business goals, such as brand awareness, lead generation, and pipeline growth. Key responsibilities include developing event strategies, managing budgets and timelines, coordinating with vendors, promoting events across multiple channels, and analyzing performance to measure return on investment (ROI). This role requires strong project management, communication, and organizational skills, as well as creativity and a strategic marketing mindset.")
chat5.cv = cv1
chat5.user = user
chat5.title = "Event marketing manager resume"
chat5.save!

user_message18 = Message.new(role: "user", content: "I think my CV is already perfect but my friend made me add my CV into this new web app.")
user_message18.chat = chat5
user_message18.save!
assistant_message18 = Message.new(role: "assistant", content: "It's good, it just needs more of your experience working on events and showcases, can you include more of your work experience?")
assistant_message18.chat = chat5
assistant_message18.save!
user_message19 = Message.new(role: "user", content: "How specific should I be in that section?")
user_message19.chat = chat5
user_message19.save!
assistant_message19 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of attendees and revenue of any events that you have organised in the past. Do you have that kind of information to add in?")
assistant_message19.chat = chat5
assistant_message19.save!
user_message20 = Message.new(role: "user", content: "Do I need to add my eduation?")
user_message20.chat = chat5
user_message20.save!
assistant_message20 = Message.new(role: "assistant", content: "Yes, you definitely need to talk about your education background. I recommend adding a separate education section.")
assistant_message20.chat = chat5
assistant_message20.save!
user_message21 = Message.new(role: "user", content: "How about other languages that I speak?")
user_message21.chat = chat5
user_message21.save!
assistant_message21 = Message.new(role: "assistant", content: "I think you should include those too, because you never know if that could help in reaching other audiences or markets?")
assistant_message21.chat = chat5
assistant_message21.save!
user_message22 = Message.new(role: "user", content: "Anything else?")
user_message22.chat = chat5
user_message22.save!
assistant_message22 = Message.new(role: "assistant", content: "If you can use any tools or softwares that might be good to include too, mentioning the names specifically of those that you are familiar with?")
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

user_message23 = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
user_message23.chat = chat6
user_message23.save!
assistant_message23 = Message.new(role: "assistant", content: "It is not very long at all - I think you need to be more elaborate about your work experience. Why don't you start by adding that in?")
assistant_message23.chat = chat6
assistant_message23.save!
user_message24 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?")
user_message24.chat = chat6
user_message24.save!
assistant_message24 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.")
assistant_message24.chat = chat6
assistant_message24.save!
user_message25 = Message.new(role: "user", content: "Is it important to add my contact details?")
user_message25.chat = chat6
user_message25.save!
assistant_message25 = Message.new(role: "assistant", content: "They will definitely need that to get in touch with you.")
assistant_message25.chat = chat6
assistant_message25.save!
user_message26 = Message.new(role: "user", content: "If I've worked on cross-team collaboration before, should I include that?")
user_message26.chat = chat6
user_message26.save!
assistant_message26 = Message.new(role: "assistant", content: "Definitely include that. Particularly if you have experience working with engineers, designers, marketers, and executives that's really important to include.")
assistant_message26.chat = chat6
assistant_message26.save!
user_message27 = Message.new(role: "user", content: "Is there anything else I should add?")
user_message27.chat = chat6
user_message27.save!
assistant_message27 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of attendees and revenue of any events that you have organised in the past. Do you have that kind of information to add in?")
assistant_message27.chat = chat6
assistant_message27.save!

puts "Creating chat 7..."
#CV2 / CHAT7 / USER_MESSAGE28, USER_MESSAGE29, USER_MESSAGE30, USER_MESSAGE31, USER_MESSAGE32
chat7 = Chat.new(job_title: "Product Marketing Manager", job_description: "A Product Marketing Manager (PMM) is responsible for bringing a product to market by defining its positioning, messaging, and go-to-market strategy. Key duties include conducting market and competitor research, developing launch plans, creating sales and marketing collateral, and working with product, sales, and marketing teams to ensure the product's commercial success. The role is at the intersection of product, sales, and marketing, with a focus on telling the product's story and converting audiences into loyal customers.")
chat7.cv = cv2
chat7.user = user
chat7.title = "Experienced product marketing manager"
chat7.save!

user_message28 = Message.new(role: "user", content: "I do think that this is the greatest CV in the whole world, but I really want this product marketing manager job. Is there anything that you can suggest?")
user_message28.chat = chat7
user_message28.save!
assistant_message28 = Message.new(role: "assistant", content: "The most important thing is whether you have any similar experience to product marketing? Including any experience like this is relevant and important.")
assistant_message28.chat = chat7
assistant_message28.save!
user_message29 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?")
user_message29.chat = chat7
user_message29.save!
assistant_message29 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.")
assistant_message29.chat = chat7
assistant_message29.save!
user_message30 = Message.new(role: "user", content: "Is it important to add my contact details?")
user_message30.chat = chat7
user_message30.save!
assistant_message30 = Message.new(role: "assistant", content: "They will definitely need that to get in touch with you.")
assistant_message30.chat = chat7
assistant_message30.save!
user_message31 = Message.new(role: "user", content: "I worked in sales for a little bit, should I add that?")
user_message31.chat = chat7
user_message31.save!
assistant_message31 = Message.new(role: "assistant", content: "Definitely include that. Particularly if you have experience in a similar industry or field - that will be good for any potential future employers to know!")
assistant_message31.chat = chat7
assistant_message31.save!
user_message32 = Message.new(role: "user", content: "Is there anything else I should add?")
user_message32.chat = chat7
user_message32.save!
assistant_message32 = Message.new(role: "assistant", content: "The more detail the better - especially if you can add numbers of KPIs or targets met. That is something that companies love to see.")
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

user_message33 = Message.new(role: "user", content: "I want to make sure that my CV is as tailored as possible.")
user_message33.chat = chat8
user_message33.save!
assistant_message33 = Message.new(role: "assistant", content: "The most important thing is whether you have any similar experience to this role? Including any experience like this is relevant and important.")
assistant_message33.chat = chat8
assistant_message33.save!
user_message34 = Message.new(role: "user", content: "Should I add all my work experience from when I was a teenager?")
user_message34.chat = chat8
user_message34.save!
assistant_message34 = Message.new(role: "assistant", content: "Start with the most recent and the most relevant work experience. That should take up most of the space, and then you can see how much space you have left for additional tasks. Anything that provided you with relevant skills for this job will be useful to include.")
assistant_message34.chat = chat8
assistant_message34.save!
user_message35 = Message.new(role: "user", content: "Shall I let them know that I used to work as a sales executive for a SaaS company?")
user_message35.chat = chat8
user_message35.save!
assistant_message35 = Message.new(role: "assistant", content: "Yes! That's extremely relevant. I recommend adding more information about that and making sure that you've shared your past responsibilities in your role and your achievements.")
assistant_message35.chat = chat8
assistant_message35.save!
user_message36 = Message.new(role: "user", content: "What else do you think I could add?")
user_message36.chat = chat8
user_message36.save!
assistant_message36 = Message.new(role: "assistant", content: "Have you attended any networking events or do you have experience in networking? This is good to include too.")
assistant_message36.chat = chat8
assistant_message36.save!
user_message37 = Message.new(role: "user", content: "Is there anything else I should add?")
user_message37.chat = chat8
user_message37.save!
assistant_message37 = Message.new(role: "assistant", content: "The job spec mentinos relationship building, if there is anything that you can include on this that would be really helpful. For example whether you have long-term client relationship building experience, or if you have any experience in building partnerships.")
assistant_message37.chat = chat8
assistant_message37.save!

# 5.times do
#   user_message = Message.new(role: "user", content: "Well I don't know but it isn't as great as it should be. I don't know. It needs more.")
#   user_message.chat = chat
#   user_message.save!
#   assistant_message = Message.new(role: "assistant", content: "Nah, it's a good start. The main tip is.")
#   assistant_message.chat = chat
#   assistant_message.save!
# end
