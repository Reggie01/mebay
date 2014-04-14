
task :default do
  puts "hello world"
end

task :ring do
  puts "Bell is ringing."
end

task :enter => :ring do 
  puts "Entering home!"
end

namespace :import do
  desc "imports data from a csv file"
  task :data => :environment do
    require 'csv'
    CSV.foreach('C:\Users\user\Downloads\ads.csv', :headers => true) do |row|
      puts row
      Ad.create!(row.to_hash)
    end
  end
end