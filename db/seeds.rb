# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create First Users
admin = User.create!( first_name: "Admin",
			                last_name:  "User",
			                email:      "admin@test.com",
			                state: 			"Active",
			                password:   "foobar",
			                committee_id: "1",
			                password_confirmation: "foobar")
			  admin.toggle!(:admin)

			  User.create!( first_name: "Test",
			                last_name:  "User",
			                email:      "user@test.com",
			                state: 			"Active",
			                committee_id: "1",
			                password:   "stanford",
			                password_confirmation: "stanford")


Committee.create!([
	{ 
		name: "Arts, Culture, & Science", 
		description: "Arts, Culture and Science brings you museum tours, music salons, opera at the park, talks with professional artists and film festival critics, cultural events."
		},
	{ 
		name: "Career & Professional",
		description: "Career & Professional connects alumni with startup companies, educates alumni about Stanford career resources and career advancement strategies."
		},
	{ 
		name: "Community Service & Philanthropy",
		description: "The Community Service & Philanthropy committee brings you volunteer opportunities with organizations like San Francisco Food Bank, Save the Bay, and more."

		},
	{ 
		name: "Design & Innovation",
		description: "Design and Innovation brings you events on interesting Design and/or Innovation. We also bring you networking events hosted by innovative companies."
		},
	{ 
		name: "Food & Wine",
		description: "Food and Wine brings you excursions to wine country, old vs. new world wine tastings, gourmet food tastings."
		},
	{ 
		name: "Social & Networking",
		description: "Social and Networking brings you speed-dating, Ivy Mixers, happy hours."
		},
	{ 
		name: "Speaker Events",
		description: "Speaker Events brings you engaging events with Stanford's rockstar professors, provides forum for learning about current issues."
		},
	{ 
		name: "Sports & Recreation",
		description: "Sports and Recreation brings you hikes all around the Bay Area including San Anselmo, Mt. Tam, jogs in the Bay Area."
		}
])

EventState.create!([
	{
		name: "Published",
		name_order: 3
	},
	{
		name: "Draft",
		name_order: 2
	},
	{
		name: "Removed",
		name_order: 1
	}
])