Developer.create( name: "Rodrigo Vasconcelos de Barros", 
                  title: "Fullstack developer",
                  birthdate:Date.new(1988,4,7),
                  location: "Fortaleza, CE, Brazil",
                  pitch:"I’m a software developer with a passion for solving problems and programming"+
                        " as a tool to make people’s lives easier.\nI graduated from IFCE - Ceará’s Federal"+
                        " Institute of Technology and Education in 2016, and have been working on software"+
                        " development for mobile and web for two years. I also have some experience developing"+
                        " desktop and embedded applications.\nMost recently I have been working with Ruby on Rails"+
                        " development, focusing on building RESTful API’s and designing ")

Experience.create( [
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


