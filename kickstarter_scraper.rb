# require libraries/modules here
require 'nokogiri'
require 'pry'
def create_project_hash
  # write your code here
  
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  
  kickstarter.css("li.project.grid_4").first
  # projects: kickstarter.css("li.project.grid_4")
  project.css("h2.bbcard_name strong a").text
  # title: project.css("h2.bbcard_name strong a").text
  project.css("div.project-thumbnail a img").attribute("src").value
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  project.css("p.bbcard_blurb").text
  # description: project.css("p.bbcard_blurb").text
end