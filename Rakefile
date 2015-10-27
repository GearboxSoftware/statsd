require 'bundler/setup'
require 'bundler/gem_tasks'
require 'ci/reporter/rake/minitest'

task :default => :spec

require 'rake/testtask'
Rake::TestTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.verbose = true
  spec.warning = true
end

task :spec => 'ci:setup:minitest'

require 'yard'
YARD::Rake::YardocTask.new
