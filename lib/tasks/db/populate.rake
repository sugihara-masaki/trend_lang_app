require 'csv'

desc 'Populate database'
task 'db:populate' => :environment do
  SampleData::RepositorySnapshots::Generator.instance.generate
end
