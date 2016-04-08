require 'bundler/setup'
require 'bundler/gem_tasks'

desc 'Run tests'
task default: :test

desc 'Run tests'
task :test do
  puts 'Running tests...'
  Dir['./spec/*.sh'].each(&method(:run_spec))
  puts 'Tests complete.'
end

def run_spec(spec_path)
  puts "sh #{spec_path}"
  output = `sh #{spec_path} 2>&1`
  raise output unless $?.success?
end
