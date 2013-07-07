FactoryGirl.define do
  factory :user do
    first_name 	"Jay"
    last_name 	"User"
    email 			"jay@test.com"
    password 		"foobar"
    password_confirmation "foobar"
  end

  factory :admin, class: User do
    first_name 	"Jay"
    last_name 	"User"
    email 			"jay@test.com"
    password 		"foobar"
    password_confirmation "foobar"
    admin      true
  end

  factory :event do
    name  "Test Event"
    committee_id "1"
  end
end