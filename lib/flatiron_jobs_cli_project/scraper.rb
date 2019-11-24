class FlatironJobsCliProject::Scraper
  
  def self.jobs_call
  https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/jobs
  end
  
  def self.offices_call
    https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/offices
  end

  def self.departments_call
    https://boards-api.greenhouse.io/v1/boards/flatironschoolcareers/departments
  end
end