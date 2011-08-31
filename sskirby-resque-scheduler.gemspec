# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sskirby-resque-scheduler}
  s.version = "1.10.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Ben VandenBos}, %q{Brian Landau}, %q{Sean Kirby}, %q{Tanzeeb Khalili}]
  s.date = %q{2011-08-31}
  s.description = %q{Light weight job scheduling on top of Resque.
  Adds methods enqueue_at/enqueue_in to schedule jobs in the future.
  Also supports queueing jobs on a fixed, cron-like schedule.}
  s.email = %q{sskirby@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "HISTORY.md",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "lib/resque/scheduler.rb",
    "lib/resque_scheduler.rb",
    "lib/resque_scheduler/server.rb",
    "lib/resque_scheduler/server/views/delayed.erb",
    "lib/resque_scheduler/server/views/delayed_timestamp.erb",
    "lib/resque_scheduler/server/views/scheduler.erb",
    "lib/resque_scheduler/tasks.rb",
    "lib/resque_scheduler/version.rb",
    "sskirby-resque-scheduler.gemspec",
    "tasks/resque_scheduler.rake",
    "test/delayed_queue_test.rb",
    "test/redis-test.conf",
    "test/resque-web_test.rb",
    "test/scheduler_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/sskirby/resque-scheduler}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Light weight job scheduling on top of Resque}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redis>, [">= 2.0.1"])
      s.add_runtime_dependency(%q<resque>, [">= 1.8.0"])
      s.add_runtime_dependency(%q<tanzeeb-rufus-scheduler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
    else
      s.add_dependency(%q<redis>, [">= 2.0.1"])
      s.add_dependency(%q<resque>, [">= 1.8.0"])
      s.add_dependency(%q<tanzeeb-rufus-scheduler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<redis>, [">= 2.0.1"])
    s.add_dependency(%q<resque>, [">= 1.8.0"])
    s.add_dependency(%q<tanzeeb-rufus-scheduler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
  end
end

