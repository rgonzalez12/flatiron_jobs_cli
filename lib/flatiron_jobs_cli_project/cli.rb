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
    puts "To see all the current openings, type 'list jobs'."
    puts "You can also close the program by typing 'exit'."
    
    while input != "exit"

      input = gets.strip.downcase
      
      if input == input.to_i.to_s
        job_info(input)
      elsif input == "list jobs"
        list_all
      elsif input == "exit"
        exit_message
      else
        puts "\nThis is not a valid option. Please choose one of the available options."
        sleep(0.5)
        puts "\nTo see the list of jobs, type 'list jobs'. You can also leave the program by typing 'exit'."
      end 
    end
  end

  def list_all
    puts "Here are all of the current openings at Flatiron School."
    
    JobPost.all.each.with_index do |job, i|
      puts "#{i}. #{job.title}"
    end
    
    puts "Enter the job number you wish to view. You can also close the program by typing 'exit'."
  end
  
  def job_info(input)
    input = input.strip.to_i
    unless (0..JobPost.all.size - 1).cover?(input)
      puts "Invalid job number. Please enter a number between 1 - #{JobPost.all.size - 1}."
      return
    end
    job = JobPost.all[input]
    puts "#{job.title} - #{job.location}"
    puts "\n=========================================="
    puts "#{job.content}" 
    puts "\n=========================================="
    puts "\nCopy and paste the link below to apply!"
    puts "\n#{job.absolute_url}"
    puts "\n=========================================="
    puts "\nYou can view another job by: typing the job number, typing 'list jobs' to see the list again, or 'exit' to leave."
  end
  
  def exit_message
    puts "Thank you for your consideration. See you next time!"
  end
  
end