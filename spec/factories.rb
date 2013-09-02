FactoryGirl.define do
  factory :user do
    first_name  "Regular"
    last_name   "User"
    email       "regularuser@test.com"
    state       "Active"
    committee_id "1"
    password    "foobar"
    password_confirmation "foobar"
  end

  factory :old_user, class: User do
    first_name  "Old"
    last_name   "User"
    email       "olduser@test.com"
    state       "Innactive"
    committee_id "1"
    password    "foobar"
    password_confirmation "foobar"
  end

  factory :admin, class: User do
    first_name  "Admin"
    last_name   "User"
    email       "admin@test.com"
    committee_id "1"
    state       "Active"
    password    "foobar"
    password_confirmation "foobar"
    admin      true
  end

  factory :event do
    name          "Test Event"
    committee_id  "1"
    start_date    "2013-01-01"
    start_time    "9am"
  end

  factory :committee do
    name        "Test Committee"
    description "This is a test committee"
  end
end