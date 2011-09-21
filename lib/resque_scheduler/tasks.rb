# require 'resque/tasks'
# will give you the resque tasks

namespace :resque do
  task :setup

  desc "Start Resque Scheduler"
  task :scheduler => :scheduler_setup do
    require 'resque'
    require 'resque_scheduler'

    Resque::Scheduler.verbose = true if ENV['VERBOSE']
    if ENV['RESCUE_SCHEDULER_AIRBRAKE']
      Airbrake::configure do |config|
        yaml = YAML.load_file(ENV['RESCUE_SCHEDULER_AIRBRAKE'])['api_key']
        yaml.each do |key, val|
          config.send(:"#{key}=", val)
        end
      end
      Resque::Scheduler.airbrake = true 
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
