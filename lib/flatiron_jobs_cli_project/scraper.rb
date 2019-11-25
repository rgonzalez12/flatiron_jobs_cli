class Scraper
  
  def all_jobs_call
    url = "https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/jobs"
    response = HTTParty.get(url)
    response["jobs"].each do |job|
      absolute_url = job["absolute_url"]
      location = job["location"]
      metadata = job["metadata"]
      id = job["id"]
      title = job["title"]
    end
  end
  
  def offices_call
    url = "https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/offices"
    response = HTTParty.get(url)
    response["offices"].each do |office|
      name = office["name"]
      location = office["location"]
      id = office["id"]
    end
  end

  def departments_call
    url = "https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/departments"
    response = HTTParty.get(url)
    response["departments"].each do |department|
      id = department["id"]
      name = department["name"]
    end
  end
  
end