# require 'resque/tasks'
# will give you the resque tasks

namespace :resque do
  task :setup

  desc "Start Resque Scheduler"
  task :scheduler => :scheduler_setup do
    require 'resque'
    require 'resque_scheduler'

    Resque::Scheduler.verbose = true if ENV['VERBOSE']
    if File.exists?("config/airbrake.yml")
      Resque::Scheduler.airbrake = true 
      Airbrake::configure do |config|
        yaml = YAML.load_file("config/airbrake.yml")
        yaml.each do |key, val|
          config.send(:"#{key}=", val)
        end
      end
    end
    Resque::Scheduler.run
  end

  task :scheduler_setup do
    if ENV['INITIALIZER_PATH']
      load ENV['INITIALIZER_PATH'].to_s.strip
    else
      Rake::Task['resque:setup'].invoke
    end
  end

end
