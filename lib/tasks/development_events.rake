namespace :db do
  desc "Fill database with test data"
  task dev_events: :environment do
    make_events
  end 
end

def make_events
  20.times do #|n|
    name        = Faker::Name.name
    desc        = Faker::Lorem.paragraph(sentence_count = 5, supplemental = false)
    committee   = (1..5).to_a.shuffle.first
    event_state_id = (1..2).to_a.shuffle.first
    address     = "123 Main Street SF"
    date        = Time.now + (60*60*24)*rand(-100..100)
    # start_time  = Time.at((Time.now).to_f*rand).strftime("%H:%m")
    start_time  = (1..12).to_a.shuffle.first.to_s + ["am", "pm"].shuffle.first
    end_time    = (1..12).to_a.shuffle.first.to_s + ["am", "pm"].shuffle.first
    cost_member = (5..100).to_a.push("").shuffle.first
    cost_guest  = (5..100).to_a.push("Free").shuffle.first
    cost_young_alumn = (5..100).to_a.push("").shuffle.first
    reg_url     = Faker::Internet.url
    long        = Faker::Address.longitude
    lat         = Faker::Address.latitude
     
    Event.create!(  name: name,
                    description:  desc,
                    committee_id: committee,
                    event_state_id: event_state_id,
                    start_date:   date,
                    start_time:   start_time,
                    end_time:     end_time,
                    cost_member:  cost_member,
                    cost_guest:   cost_guest,
                    cost_young_alumn: cost_young_alumn,
                    registration_url: reg_url,
                    address:      address,
                    longitude:    long,
                    latitude:     lat
      )
  end
end
