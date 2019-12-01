class JobsBoard
  def initialize
  end

  def run_program
    ui = ""
    
    while ui != "exit"
      puts "Welcome to Flatiron School's Careers Page!"
      sleep(3)
      puts "To see all the current openings, type 'list jobs'."
      sleep(1.5)
      puts "You can also close the program by typing 'exit'."
      sleep(1.5)
      puts "What would you like to do?"

      ui = gets.strip

      case ui
      when "list jobs"
        list_all
      else
        puts "This is not a valid option. Bye!"
        sleep (0.5)
        exit
      end
    end
  end

  def list_all
    puts "Here are all of the current openings at Flatiron School. Enter the job number you would like to view."

    #logic to list every job
    puts "#{jobs.title} - #{jobs.location} - #{jobs.departments} - #{jobs.offices} - #{jobs.content}. Copy and paste the link below to apply! #{jobs.absolute_url}"
    
    #logic to pull job from api displaying info and link to apply
  end
  
  def job_info
    #lists info from the specific jobs
  end
end