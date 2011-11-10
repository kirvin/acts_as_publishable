require 'rdoc/task'
require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "geokit-rails3 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = ["./spec/**/*_spec.rb"]
end

desc 'Default: run unit tests.'
task :default => :spec