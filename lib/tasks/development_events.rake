namespace :db do
  desc "Fill database with test data"
  task dev_events: :environment do
    make_events
  end 
end
  
def make_events
  10.times do #|n|
    name  = Faker::Name.name
    Event.create!(name: name)
  end
end
