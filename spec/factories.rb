FactoryGirl.define do
  factory :user do
    first_name 	"Jay"
    last_name 	"User"
    email 			"jay@test.com"
    password 		"foobar"
    password_confirmation "foobar"
  end
end