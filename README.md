# Flatiron Jobs CLI Project By R. Alexander

This gem is a portfolio project to provide jobs pulled from Flatiron School's careers page in an easy to use, CLI. The gem provides automatically updated job information from the Applicant Tracking Software created by Greenhouse.io and their API. This program is the first version of the gem "0.1.0".

Please note: I created this to where it can be repurposed to fit any company that uses Greenhouse.io as their ATS. With slight modifications in the API and CLI files, you can integrate this quite easily and quickly to fit your needs. Feel free to submit any feedback, or if you would like to help contribute, please email me directly at "ghost@ralexander.io."

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flatiron_jobs_cli_project'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flatiron_jobs_cli_project

## Usage

You will access the program by opening the repo, then moving into the main directory:

    $ cd flatiron_jobs_cli_project

While in the directory type the following into your terminal to run the program:

```ruby
ruby bin/run
```

You will be greeted followed by two options to choose from:

    $ 'list jobs'
    $ 'exit'
    
'List Jobs' will generate current job openings. From there, you can see a numbered list of the total jobs in which you can supply a number to view a specific post. 

The number entered displays the title and location of the selected job, followed by the job description and qualifications — further context about Flatiron School or the additional information also shows when set.

You can then view another job by number, list all of the jobs again, or exit the program to leave. Enjoy the job search!

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'concurrent-library-1731'/flatiron_jobs_cli_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FlatironJobsCliProject project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'concurrent-library-1731'/flatiron_jobs_cli_project/blob/master/CODE_OF_CONDUCT.md).
