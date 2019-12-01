class API
  
  def fetch
    url = "https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/jobs"
    response = HTTParty.get(url)
    response["jobs"].each do |job|
      puts job["absolute_url"]
      puts job["location"]
      puts job["id"]
      puts job["title"]
    end
  end
  
  def job_info
    url =""
    response = HTTParty.get(url)
    response.each do |job|
      absolute_url = job["absolute_url"]
      location = job["location"]
      title = job["title"]
      content = job["content"]
    end
  end
  
end