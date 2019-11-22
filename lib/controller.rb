class JobsController
  def initialize(api = "./lib/api.rb")
    api.new(api)
  end

  def run_program
    ui = ""

    while ui != "exit"
      puts "Welcome to Flatiron School's Careers Page!"
      sleep(3.5)
      puts "To see all of our offices with openings, enter 'offices'."
      sleep(1)
      puts "To see all of our departments with openings, enter 'departments'."
      sleep(1)
      puts "To see all the current openings in list form, type 'all openings'."
      sleep(1)
      puts "You can also close the program by typing 'exit'."
      sleep(0.5)
      puts "What would you like to do?"

      ui = gets.strip

      case ui
      when "offices"
        offices
      when "departments"
        departments
      when "all openings"
        all_openings
      end
    end
  end

  def offices
    puts "Please enter the office you wish to view."
    input = gets.strip

    #logic to list all offices

    puts "Here are all of the current openings for the #{input.offices} office. Enter the job number you would like to view."
    second_response = gets.strip

    #logic to list job info(job title, job description, job requirements, link to external application)
  end

  def departments
    puts "Please enter the department you wish to view."
    input = gets.strip

    #logic to list all departments

    puts "Here are all of the current openings for the #{input.departments} team. Enter the job number you would like to view."
    second_response = gets.strip

    #logic to list job info(job title, job description, job requirements, link to external application)
  end

  def all_openings
    puts "Here are all of the current openings at Flatiron School. Enter the job number you would like to view."

    #logic to list every job, regardless of department or location
    puts "#{jobs.title} - #{jobs.location} - #{jobs.departments} - #{jobs.offices} - #{jobs.content}. Copy and paste the link below to apply! #{jobs.absolute_url}"
  end
end