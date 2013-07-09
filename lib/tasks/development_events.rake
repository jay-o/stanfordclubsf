namespace :db do
  desc "Fill database with test data"
  task dev_events: :environment do
    remove_old_events
    make_events
  end 
end

def remove_old_events
  Event.find_each(&:destroy)
end

def make_events
  15.times do #|n|
    name  = Faker::Name.name
    desc 	= Faker::Lorem.paragraph(sentence_count = 5, supplemental = false)
    committee = (1..5).to_a.shuffle.first
    # Random Date
    from = Time.now
    to = Time.now + (60*60*24)*rand(100) 
    date =  Time.at(from + rand * (to.to_f - from.to_f))
    Event.create!(	name: name,
    								description: desc,
                    committee_id: committee,
                    start_date: date
    	)
  end
end
