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
    committee = (1..5).to_a.shuffle.first
    Event.create!(	name: name,
    								description: desc,
                    committee_id: committee
    	)
  end
end
