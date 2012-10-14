# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "irb-benchmark"
  gem.homepage = "http://github.com/ProGNOMmers/irb-benchmark"
  gem.license = "MIT"
  gem.summary = %Q{Auto-benchmarking of irb commands}
  gem.description = %Q{irb-benchmark wraps irb commands in a Benchmark.measure{ ... } block and displays 
the results after the command execution}
  gem.email = "desantis.maurizio@gmail.com"
  gem.authors = ["Maurizio De Santis"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "irb-benchmark #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
