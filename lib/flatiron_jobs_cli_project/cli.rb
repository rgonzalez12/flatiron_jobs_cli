class JobsBoard
  
  def run
    API.new.fetch
    welcome
    menu
  end
  
  def welcome
    puts "Welcome to Flatiron School's Careers Page!".light_white.bold
    puts "==========================================".light_cyan.bold
  end

  def menu
    input = nil
    puts "To see all the current openings, type 'list jobs'.".light_white.bold
    puts "You can close the program by typing 'exit'.".light_white.bold
    puts "What would you like to do?".light_white.bold
    
    while input != "exit"

      input = gets.strip.downcase
      
      if input == input.to_i.to_s
        job_info(input)
      elsif input == "list jobs"
        list_all
      elsif input == "exit"
        exit_message
      else
        puts "\nThis is not a valid option. Please choose one of the available options.".red.bold
        puts "\nTo see the list of jobs, type 'list jobs'. You can also close the program by typing 'exit'.".red.bold
      end 
    end
  end

  def list_all
    puts "Here are all of the current openings at Flatiron School:".light_white.bold
    puts "========================================================".light_cyan.bold
    
    JobPost.all.each.with_index do |job, i|
      puts "#{i + 1}. #{job.title}".light_white
    end
    puts "\n===============================================================================\n".light_cyan.bold
    puts "Enter the job number you wish to view. You can also close the program by typing 'exit'.".light_white.bold
  end
  
  def job_info(input)
    input = input.strip.to_i - 1
    unless (0..JobPost.all.size - 1).cover?(input)
      puts "\nInvalid job number. Please enter a number between 1 - #{JobPost.all.size}.\n".red.bold
      puts "You can also type 'list jobs' to see this list again, or 'exit' to leave.".red.bold
      return
    end
    job = JobPost.all[input]
    puts "#{job.title} - #{job.location}".light_white.bold
    puts "\n==========================================".light_cyan.bold
    puts ""
    puts "#{job.content}".light_white.bold
    puts "\n==========================================".light_cyan.bold
    puts "\nCopy and paste the link below in your web browser to apply:".light_white
    puts "\n#{job.absolute_url}".light_white.bold
    puts "\n==========================================".light_cyan.bold
    puts "\nYou can view another job by typing the job number".light_white.bold
    puts "\nBy typing 'list jobs' to see the list again".light_white.bold
    puts "\nor 'exit' to close the program.".light_white.bold
  end
  
  def exit_message
    puts "Thanks for considering Flatiron School. See you next time!".light_white.bold
  end
  
end