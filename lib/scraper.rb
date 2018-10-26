require 'open-uri'
require 'pry'

class Scraper
  def self.scrape_index_page(index_url)
    srape_url = Nokogiri::HTML(open(index_url))
    srape_url.css(".student-card a").map do |html_student|
      {name: html_student.css("h4").text, location: html_student.css("p").text, profile_url: html_student.attribute("href").value}
    end

  end

  def self.scrape_profile_page(profile_url)

  end

end
