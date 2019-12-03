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
    sleep(0.5)
    puts "To see all the current openings, type 'list jobs'."
    sleep(0.5)
    puts "You can also close the program by typing 'exit'."
    
    while input != "exit"

      input = gets.strip.downcase
      
      if input.to_i > 0
        job_info(input)
      elsif input == "list jobs"
        list_all
      elsif input == "exit"
        exit_message
      else
        puts "\nThis is not a valid option. Please choose one of the available options."
      end 
    end
  end

  def list_all
    puts "Here are all of the current openings at Flatiron School."
    sleep(1)
    
    JobPost.all.each.with_index do |job, i|
      puts "#{i}. #{job.title}"
    end
    
    puts "Enter the job number you wish to view. You can also close the program by typing 'exit'."
    sleep(2)
  end
  
  def job_info(input)
    input = gets.strip.to_i
    job = JobPost.all[input]
    puts "#{job.title} - #{job.location} - #{job.content}. Copy and paste the link below to apply! #{job.absolute_url}"
    puts "You can view another job by typing 'list jobs' or 'exit' to leave."
  end
  
  def exit_message
    sleep(0.5)
    puts "Thank you for visiting. See you next time!"
  end
  
end