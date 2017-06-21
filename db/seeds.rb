Developer.create( name: "Rodrigo Vasconcelos de Barros", 
                  title: "Fullstack developer",
                  birthdate:Date.new(1988,4,7),
                  location: "Fortaleza, CE, Brazil",
                  picture: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719232/seed_data/selfie.jpg"),
                  pitch:"I’m a software developer with a passion for solving problems and programming"+
                        " as a tool to make people’s lives easier.\nI graduated from IFCE - Ceará’s Federal"+
                        " Institute of Technology and Education in 2016, and have been working on software"+
                        " development for mobile and web for two years. I also have some experience developing"+
                        " desktop and embedded applications.\nMost recently I have been working with Ruby on Rails"+
                        " development, focusing on building RESTful API’s and designing scalable backend structure.")

Developer.first.experiences.create( [
  { title: "Fullstack Developer",
    date_started: Date.new(2017,1,15),
    current: true,
    company: "iFactory Solutions",
    company_url: "http://www.ifactory.com.br/",
    description:  "As a fullstack developer, I implement integration patterns using WSO2 ESB "+
                  "platform as a tool to connect different services.\n"+
                  "I also worked with frontend development, using html, css and angularJS."
  },
  { title: "Ruby on Rails Backend Developer",
    date_started: Date.new(2016,7,1),
    date_ended: Date.new(2017,1,13),
    company: "Index Digital",
    company_url: "http://www.indexdigital.com.br/",
    description:  "As a RoR backend developer, I design, develop and maintain APIs that feed "+
                  "our clients applications, both web and mobile.\n"+
                  "I also worked on the development of the frontend web aplication, using angularJS."
  },
  { title: "Software Developer Trainee",
    date_started: Date.new(2014,6,1),
    date_ended: Date.new(2015,12,23),
    company: "BEPiD - Brazilian Education Program iOS Development",
    company_url: "http://bepid.ifce.edu.br/",
    description:  "A program aimed towards iOS development,using both Objective-C and Swift as development"+
                  " languages.We also received various lectures on entrepreneurship,design,"+
                  "project management and presentation skills. During the program, I worked on "+
                  "a total of 5 apps,of which 3 where published on the Appstore."
  },
  { title: "Software Developer Trainee",
    date_started: Date.new(2013,1,1),
    date_ended: Date.new(2014,1,10),
    company: "LSBD - UFC",
    company_url: "http://www.lsbd.ufc.br/lsbd/",
    description:  "As a software trainee, I worked on a project to develop hardware diagnosing"+
                  " and monitoring tool, running on windows and various linux distributions."+
                  " We used C++ and the Qt framework to develop the application."
  }
])

Developer.first.skills.create([
  { title: "Ruby on Rails",
    experience: 24,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/rails.png"),
    description: "I have worked with RoR since version 4.2, mostly using it to create RESTful APIs.\n"+
                  "Fun fact: this site uses a rails 5.1 API to feed it's data."
  },
  { title: "AngularJS",
    experience: 8,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/angularjs.png"),
    description: "I have used angularJS  (both v1 and v2) to build client side applications,"+
                  " both professionally and on personal projects.\nFun fact: this app uses angularJS "+
                  "v2 on the frontend."
  },
  { title: "Swift",
    experience: 18,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/swift.png"),
    description: "I have used Swift to program for iOS devices since it's debut on 2014."+
                "I have developed 4 apps using it, during my time on BEPiD and after"+
                "it's conclusion."
  },
  { title: "C++",
    experience: 12,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/cpp.png"),
    description: "I have used C++ to develop desktop applications both professionally and"+
                  " academically, but haven't done it in a while. Not a stranger to scrubbing bits, though."
  },
  { title: "Git",
    experience: 36,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/git.png"),
    description: "I use git as my version control software for most of my projects, and It's "+
                  " also the one I have used the most professionally. I prefer using it via command"+
                  "line, for practicality."
  },
  { title: "Scrum",
    experience: 36,
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497719201/seed_data/scrum.png"),
    description: "I have used used scrum for most of the projects I worked with other developers, in"+
                  "projects with different scopes and teams both large and small."
  }
])


Developer.first.interests.create([
  {
    title: "Programming",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/coding.png")
  },
  {
    title: "Literature",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497792272/seed_data/literature.png")
  },
  {
    title: "Video Games",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/video-games.png")
  },
  {
    title: "Cryptocurrencies",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/bitcoin.png")
  },
  {
    title: "Self Development",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497792296/seed_data/self-improvement.png")
  },
  {
    title: "Martial Arts",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/martial-arts.png")
  },
  {
    title: "Traveling",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722484/seed_data/travel.png")
  },
  {
    title: "Craft Beer",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/beer.png")
  },
  {
    title: "Cooking",
    image: URI.parse("http://res.cloudinary.com/rodrigopk/image/upload/v1497722483/seed_data/cooking.png")
  }
]);

Developer.first.educations.create([
  {
    institution: "Instituto Federal de Educação, Ciência e Tecnologia do Ceará - IFCE",
    institution_url:"http://ifce.edu.br/",
    start_date: Date.new(2012,1,10),
    end_date: Date.new(2016,12,20),
    title: "Engineer’s Degree",
    field: "Computer Engineering",
    graduated: true
  }
]);

Developer.first.contact = Contact.create(
                            phone: "5585996515415",
                            email: "rodrigopk@gmail.com",
                            skype_id: "rodrigopk_",
                            linkedin_url: "https://www.linkedin.com/in/rodrigo-vasconcelos-de-barros-230653b3/",
                            github_url: "https://github.com/rodrigopk",
                            twitter: "https://twitter.com/_rodrigopk"
                          );
