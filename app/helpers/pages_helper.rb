module PagesHelper
  def linkedin_url
    "https://www.linkedin.com/in/annie-walsh-b754706a/"
  end

  # Projects listed on the Code page, newest first.
  # color/radius style the small shape beside each title.
  def code_projects
    [
      { title: "OneThing Platform", body: "A collaborative tool for creating and sharing personalised artistic experiences online.", tag: "Any One Thing", color: "var(--yellow)", radius: "50%" },
      { title: "Slimm Thicc Method", body: "A personal-training business site with reliable, authenticated email enquiries.", tag: "Client", color: "var(--pink)", radius: "10px", url: "https://slimmthiccmethod.com/" },
      { title: "Hashtag Activism", body: "Turning hashtags into practical actions. Version 2 of The O.A.", tag: "In progress", color: "var(--mint)", radius: "44px 44px 0 0" },
      { title: "Their Network", body: "A Rails application built with Paul Farnell. Details soon.", tag: "Coming soon", color: "var(--lilac)", radius: "50%" },
      { title: "The O.A.", body: "An activism platform prototype built in nine days by a team of four.", tag: "Le Wagon", color: "var(--orange)", radius: "10px" },
      { title: "WaterRnR", body: "My first project: a marketplace for renting swimming pools.", tag: "Le Wagon", color: "var(--blue)", radius: "44px 44px 0 0" }
    ]
  end
end
