class API

  def fetch
    url = "https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/jobs"
    response = HTTParty.get(url)
    response["jobs"].map do |job|
      absolute_url = job["absolute_url"]
      location = job["location"]
      id = job["id"]
      title = job["title"]
      content = self.job_info(id)
      JobPost.new(absolute_url, location, id, title, content)
    end
  end
  
  def job_info(id)
    url ="https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/jobs/#{id}"
    response = HTTParty.get(url)
    response["content"]
  end
  
end