require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['--out', 'tmp/rubocop.txt', '--format', 'progress']
end

task default: :spec
