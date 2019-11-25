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
  
  def self.offices_call
    https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/offices
  end

  def self.departments_call
    https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/departments
  end
end