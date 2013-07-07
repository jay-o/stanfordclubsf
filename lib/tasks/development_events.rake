namespace :db do
  desc "Fill database with test data"
  task dev_events: :environment do
    make_events
  end 
end
  
def make_events
  10.times do #|n|
    name  = Faker::Name.name
    desc 	= Faker::Lorem.paragraph(sentence_count = 5, supplemental = false)
    Event.create!(	name: name,
    								description: desc
    	)
  end
end
