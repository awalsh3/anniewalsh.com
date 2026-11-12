module PagesHelper
  def linkedin_url
    "https://www.linkedin.com/in/annie-walsh-b754706a/"
  end

  # Projects listed on the Code page, newest first.
  # color/radius style the small shape beside each title.
  def code_projects
    [
      { title: "Video Streaming Site", body: "A portfolio website showcasing a film school applicant’s creative work.", tag: "Client", color: "var(--yellow)", radius: "50%" },
      { title: "Slimm Thicc Method", body: "A personal-training business site with authenticated email enquiries.", tag: "Client", color: "var(--pink)", radius: "10px", url: "https://slimmthiccmethod.com/" },
      { title: "Maritime Tracking", body: "A prototype exploring vessel movements/environmental impact.", tag: "Client", color: "var(--orange)", radius: "10px" },
      { title: "Hashtag Activism", body: "A platform turning social media activism into meaningful action.", tag: "Personal Project", color: "var(--mint)", radius: "44px 44px 0 0" },
      { title: "Their Network", body: "Civic-tech platform exposing UK MPs' business connections to improve political transparency.", tag: "Any One Thing", color: "var(--lilac)", radius: "50%" },
      { title: "OneThing Platform", body: "A digital platform for creating and delivering interactive, audience-driven theatre experiences.", tag: "Any One Thing", color: "var(--yellow)", radius: "50%" },
      { title: "WaterRnR", body: "A marketplace for renting swimming pools. Airbnb for pools.", tag: "Le Wagon", color: "var(--blue)", radius: "44px 44px 0 0" }
    ]
  end
end
