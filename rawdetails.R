# CV info
library(vitae)
library(readr)
library(tibble)

# Education

education <- tribble(
  ~ degree,
  ~ uni,
  ~ loc,
  ~ dates,
  ~ details,
  "Master of Philosophy (Statistics)",
  "Queensland University of Technology",
  "Brisbane, Australia",
  "2018 - 2020",
  "A New Algorithm For Effectively Visualising Australian Spatio-Temporal Disease Data",
  "Bachelor of Commerce and Bachelor of Economics",
  "Monash University",
  "Clayton, Australia",
  "2014 - 2017",
  "Majors in Econometrics and Business Modelling",
)

save(education, file = here::here("data/education.rda"))


# Jobs

jobs <- tribble(
  ~ role,
  ~ company,
  ~ loc,
  ~ dates,
  ~ details,
  "Data scientist",
  "WhyHive",
  "Clayton, Australia",
  "Jan. 2019 - Present",
  "Contribute to a variety of consulting projects with substantial spatio-temporal modelling tasks.",
  "Research assistant",
  "Monash University",
  "Clayton, Australia",
  "",
  "Editorial Assistant for the R Journal, R Consortium, Jan. 2019 - Present",
  "Research assistant",
  "Monash University",
  "Clayton, Australia",
  "",
  "Research Assistant to Prof. Dianne Cook, Jan. 2016 - Present",
)

save(jobs, file = here::here("data/jobs.rda"))

# Internship

internship <- tribble(
  ~ role,
  ~ company,
  ~ loc,
  ~ dates,
  ~ details,
  "Intern",
  "Tennis Australia: Game Insight Group",
  "Melbourne, Australia",
  "2017",
  "Work Integrated Learning Intern to Dr. Stephanie Kovalchik, Senior Sport Scientist."
)

save(internship, file = here::here("data/internship.rda"))


# Teaching experience

## University
# Teaching associate
teaching <- tribble(
  ~ role,
  ~ uni,
  ~ campus,
  ~ dates,
  ~ details,
  "Teaching associate",
  "Monash University",
  "Clayton, Australia",
  "",
  "ETC5510: Introduction to data analysis, S1 2020",
  "Teaching associate",
  "Monash University",
  "Clayton, Australia",
  "",
  "ETC5513: Collaborative and reproducible practices, S1 2020",
  "Teaching associate",
  "Monash University",
  "Clayton, Australia",
  "",
  "ETC5512: Wild-caught data, S1 2020",
  "Teaching associate",
  "Monash University",
  "Clayton, Australia",
  "",
  "ETC1010 Introduction to data analysis (Data modelling and computing), 2018 - 2020",
  "Teaching associate",
  "Monash University",
  "Clayton, Australia",
  "",
  "ETX2250: Data Visualisation and Analytics Summer 2017"
)

save(teaching, file = here::here("data/teaching.rda"))

## Workshops

workshops <- tribble(
  ~ event,
  ~ loc,
  ~ dates,
  ~ details,
  "Big Data Day (Prof Dianne Cook)",
  "Monash University",
  "2018-Present",
  "High school student workshop using R and shiny",
  "Disease risk modeling and visualization using R (Dr Paula Moraga)",
  "UseR!",
  "2018",
  "One day workshop",
  "Sports Analytics with R (Dr Stephanie Kovalchik)",
  "WOMBAT 2017",
  "2017",
  "3 hour workshop",
  # <https://github.com/skoval/WOMBATtutorial>
  "Visualisation for Data Mining (Prof Dianne Cook, Eun-Kyung Lee)",
  "WOMBAT 2017",
  "2017",
  "3 hour workshop" 
  # <https://github.com/EK-Lee/WOMBAT-2017>
)
save(workshops, file = here::here("data/workshops.rda"))

# Research experience

## Software development

pkgs <- tribble(
  ~ pkg,
  ~ when,
  ~ role,
  ~ details,
  ~ url,
  "sugarbag",
  "2019 - ",
  "Author",
  "Kobakian, Stephanie. 2018. sugarbag: Create Tessellated Hexagon Maps of Australia.",
  "https://CRAN.R-project.org/package=sugarbag",
  "taipan",
  "2018 - ",
  "Author",
  "Kobakian, Stephanie and O'Hara-Wild, Mitchell. 2017. taipan: Tool for Annotating Images in Preparation for Analysis.",
  "https://CRAN.R-project.org/package=taipan"
) %>%
  brief_entries(
    glue::glue(
      "\\textbf{<pkg>}: <role> \\newline <details> \\newline <url>",
      .open = "<",
      .close = ">"
    ),
    when,
    .protect = FALSE
  )

save(pkgs, file = here::here("data/pkgs.rda"))


# Talks

talks <- tribble(
  ~ when,
  ~ title,
  ~ details,
  ~ with,
  "2019",
  "An Australian alternative to choropleth maps; visualising geo-spatial disease data",
  "Alternative map displays for presenting spatial distributions in Australia",
  "WOMBAT 2019",
  #"https://srkobakian-wombat19.netlify.app",
  
  "2019",
  "An Australian alternative to choropleth maps; visualising geo-spatial disease data",
  "Alternative map displays for presenting spatial distributions in Australia",
  "Masters symposium",
  #"https://srkobakian-qut.netlify.app",
  "2019",
  "Maps, hexagons and life in Australia",
  "An algorithm to create tesselated hexagon tile maps for Australia",
  "Young Statisticians Conference 2019",
  #"https://srkobakian-ysc.netlify.app",
  "2019",
  "Taipan: Woman Faces Machine",
  "Storing information from images",
  "useR!2018",
  #"https://srkobakian-user2018.netlify.app",
  "2018",
  "Tidy data structures and image analysis",
  "A real example of tidy data creation, highlighting the differences between variables and observations.",
  "ETX2250 Data Visualisation and Analytics",
  #"https://srkobakian-medascin.netlify.app",
  "2017",
  "Facial Recognition: Emotions in tennis",
  "A winter research project summary presented to Tennis Australia staff.",
  "Tennis Australia",
  #"https://srkobakian-ta.netlify.app",
  
  "2017",
  "Sports Analytics: Emotions in tennis",
  "",
  "Wombat MeDaScIn",
  #"https://srkobakian-medascin.netlify.app"
) %>%
  brief_entries(glue::glue(
    "\\textbf{<title>}: <details>",
    .open = "<",
    .close = ">"
  ),
    when,
    .protect = FALSE)


save(talks, file = here::here("data/talks.rda"))

# Awards


awards <- tribble(
  ~ what,
  ~ when,
  ~ where,
  ~ with,
  ~ why,
  "Championship Team",
  "2018",
  "Atlas of Living Australia",
  "UseR!2018 Datathon Competiton",
  "Created a Shiny app intending to aid primary children in the exploration of animals living in Australia. It displayed sightings of bee species across Australia in a colourful and interactive setting. ",
  "Championship Team",
  "2016",
  "SAP University Alliances",
  "Analytics Competiton",
  "Competed against over 20 teams of analytics students from universities in Melbourne. Provided an infographic describing the state of homelessness in Australia, detailing the amount of homeless persons in varying age groups. Recommended solutions based on reasons driving homelessness situations.",
  
  "Scholarship Awardee",
  "2016",
  "Department of Econometrics and Business Statistics",
  "Monash Winter Research Program",
  "In association with Dr Stephanie Kovalchik and Prof. Dianne Cook, test how well currently available facial recognition software performs at identifying faces of the two players in a tennis match. This project involved coding tennis matches for faces, applying the facial recognition software, and performing statistical analyses to determine the software's performance accuracy."
)

save(awards, file = here::here("data/awards.rda"))
