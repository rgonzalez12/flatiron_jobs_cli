class JobsBoard
  
  def run
    API.new.fetch
    welcome
    menu
  end
  
  def welcome
    puts "Welcome to Flatiron School's Careers Page!"
  end

  def menu
    input = nil
    
    while input != "exit"
      sleep(1.5)
      puts "To see all the current openings, type 'list jobs'."
      sleep(1.5)
      puts "You can also close the program by typing 'exit'."
      sleep(1.5)
      puts "What would you like to do?"

      input = gets.strip.downcase
      
      if input == "list jobs"
        list_all
      elsif input == "exit"
        exit_message
      else
        puts "\nThis is not a valid option."
      end 
    end
  end

  def list_all
    puts "Here are all of the current openings at Flatiron School. Enter the job number you would like to view."
    sleep(1)
    
    JobPost.all.each.with_index(1) do |job, i|
      puts "#{i}. #{job.title}"
    end
  end
  
  def job_info
    puts "#{jobs.title} - #{jobs.location} - #{jobs.departments} - #{jobs.offices} - #{jobs.content}. Copy and paste the link below to apply! #{jobs.absolute_url}"
    #lists info from the specific jobs
  end
  
  def exit_message
    sleep(0.5)
    puts "Thanks for visiting. See you next time!"
  end
end