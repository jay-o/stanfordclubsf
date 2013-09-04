#encoding: utf-8
namespace :db do
  desc "Fill database with old events"
  task prod_seed_old_events: :environment do
    remove_old_events
    add_old_events
  end 
end

def remove_old_events
  Event.find_each(&:destroy)
end

def add_old_events

  Event.create!(
    [
      { 
        name:             "Sake Tasting in the Presidio",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-08-17",
        start_time:       "4:30 PM",
        cost_member:      "55",
        cost_young_alumn: "",
        cost_guest:       "60",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=12538",
        address:          "Presidio, San Francisco",
        description:  "Learn about the world of sake from the inside out. Mari Jensen and Laurel Skurko are both Japanese chefs who have a passion for sharing insider information and taste sensations in The Bay Area.  We teach through taste- and through stories and are eager to hear yours as well!
          We always offer accompanying homemade appetizers that will inspire, as well as non-alcoholic sake alternatives. This is because sake has many non-alcoholic manifestations in Japan and because many of our guests are non-drinkers and want to enjoy this element of the sake tradition.
          Exact Location given to confirmed guests" 
      },
      { 
        name:             "Stanford Jazz Festival - Second Night",
        committee_id:     "1",
        event_state_id:   "3",
        start_date:       "2013-08-10",
        start_time:       "6:45 pm",
        cost_member:      "85",
        cost_young_alumn: "85",
        cost_guest:       "85",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=12540",
        address:          "Bing Concert Hall, Stanford University",
        description:  "Come experience the Stanford Jazz Festival at the new Bing Concert Hall in a 2-part “series”! Founder and Artistic &amp; Executive Director Jim Nadel (a Stanford grad) and his team at Stanford Jazz Workshop created a special opportunity to hear great music, learn about the new Bing Concert Hall, get backstage passes for one of the shows, and enjoy lively discussions with representatives of Stanford Live, Stanford Jazz Workshop and The Stanford Club of San Francisco!

Stanford Jazz Workshop has kindly reserved 20 seats for us for two concerts (August 3 and August 10). These two evenings will wake you up to the past, present and future of jazz, and the stunning new auditorium that opened last spring.

Seating is limited, so don't delay.
Details

Chucho Valdés Quintet
Bing Concert Hall

6:45 pm: Meet SCSF members at a no-host bar at the Interlude Café at Bing Concert Hall for a pre-show conversation with executive staff of Stanford Live and Stanford Jazz Workshop to get behind-the-music of Chucho Valdés and learn more about the construction of Bing Concert Hall.

8 pm: Show time

The astonishing talent of pianist Chucho Valdés first became know outside of his native Cuba when the Stanford Jazz Workshop presented one of his premiere U.S. performances. Isolated from the developments of the New York and San Juan-based salsa artists in the 1960s, Chucho created his own adventurous blend of jazz, Afro-Cuban, and contemporary music that rocketed him to international stardom once he was free to travel.

His group, Irakere, which he founded in 1973, launched the careers of several other well-known Cuban musicians, including trumpeter Arturo Sandoval and multi-reed master Paquito D'Rivera. Accompanied in Bing Concert Hall by bass and percussion, the five-time GRAMMY® Award winning piano powerhouse will present a program that combines the roots of Afro-Cuban music with his unbridled approach to contemporary jazz. And this experience will be intensified by the intimacy of the new Bing Concert Hall. For more information, visit www.chucho-valdes.com." 
      },
      { 
        name:             "Stanford Jazz Festival - First Night",
        committee_id:     "1",
        event_state_id:   "3",
        start_date:       "2013-08-03",
        start_time:       "6:15 pm",
        end_time:         "10:00 PM",
        cost_member:      "85",
        cost_young_alumn: "85",
        cost_guest:       "85",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=12558",
        address:          "Dinkelspiel Auditorium, Stanford University",
        description:  "Come experience the Stanford Jazz Festival at the new Bing Concert Hall in a 2-part “series”! Founder and Artistic & Executive Director Jim Nadel (a Stanford grad) and his team at Stanford Jazz Workshop created a special opportunity to hear great music, learn about the new Bing Concert Hall, get backstage passes for one of the shows, and enjoy lively discussions with representatives of Stanford Live, Stanford Jazz Workshop and The Stanford Club of San Francisco!

Stanford Jazz Workshop has kindly reserved 20 seats for us for two concerts (August 3 and August 10). These two evenings will wake you up to the past, present and future of jazz, and the stunning new auditorium that opened last spring.

Seating is limited, so don't delay.
Cost: Tickets are $85 for the two shows and our VIP gatherings (slightly different meeting spots for SCSF members for each show, so we will email all those who register later.)

Details

Savion Glover and his Trio
Dinkelspiel Auditorium

*Note: This concert is not held at Bing Concert Hall.

6:15 gather for drinks in/near Dinkelspiel Auditorium
7:00 Inside Jazz talk: Tap Dance: It's About Time with Sonny Buxton (KCSM) at Dinkelspiel Auditorium
8:00 Show time
10:00 Backstage passes to post-show reception!

Internationally acknowledged as the greatest tap dancer who ever lived, Tony-winner Savion Glover magically bridges dancing and jazz improvisation. From a family with a rich musical tradition, Savion's gift was recognized young and he studied tap with the giants of the art including Gregory Hines, Honi Coles, and Sammy Davis Jr. He debuted on Broadway at age 10, nabbed his first Tony nomination at 15, and stood New York and the dance world on their ears when he choreographed and starred in Bring in Da Noise, Bring in Da Funk in 1996.

He's made his mark starring in movies by Spike Lee and Barbara Streisand, participating in more than 20 TV specials, and guesting on Sesame Street for six years. But his true genius is expressed most fully in his kaleidoscopic and explosive dancing with his own jazz trio. Don't miss his mind-blowing fusion of the modern African-American musical experience. For additional info, visit www.saviongloverproductions.com." 
      },
      {
        name:             "Stanford at the San Francisco Food Bank",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-08-06",
        start_time:       "6:00PM",
        end_time:         "8:00PM",
        cost_member:      "Free",
        cost_young_alumn: "Free",
        cost_guest:       "Free",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=12515",
        address:          "National AIDS Memorial Grove, San Francisco",
        description:      "Join fellow alums to help with our 'Apple Corps' team at the food bank that helps feed hungry San Francisco and Marin residents. Bring your family and friends -- kids 8 and over are welcome!"
      },
      {
        name:             "Volunteer at the National AIDS Memorial Grove",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-06-15",
        start_time:       "9:00AM",
        end_time:         "1:00PM",
        cost_member:      "Free",
        cost_young_alumn: "Free",
        cost_guest:       "Free",
        registration_url: "http://alumni.stanford.edu/goto/namg",
        address:          "San Francisco Food Bank, 900 Pennsylvania Avenue, San Francisco CA 94107",
        description:      "June is Pride Month! You are invited to celebrate with Stanford Pride and the Stanford Club of San Francisco for a volunteer day at the National AIDS Memorial Grove in Golden Gate Park. Activities include: clearing weeds and debris, mulching and hauling topsoil, planting new trees and shrubs, and other related activities within the Grove. A delicious free lunch will be served.

        About the National AIDS Memorial Grove
The mission of the National AIDS Memorial Grove is to provide, in perpetuity, a place of remembrance, so that the lives of people who died from AIDS are not forgotten and the story is known by future generations. Located in San Francisco's Golden Gate Park, is a dedicated space in the national landscape where millions of Americans touched directly or indirectly by AIDS can gather, grieve, and grow."
      },
      {
        name:             "Crissy Field 5K Run 2013",
        committee_id:     "8",
        event_state_id:   "3",
        start_date:       "2013-06-02",
        start_time:       "8:30AM",
        end_time:         "11:00AM",
        cost_member:      "5",
        cost_young_alumn: "5",
        cost_guest:       "5",
        registration_url: "http://www.active.com/running/san-francisco-ca/crissy-field-5k-2013",
        address:          "East Beach, Crissy Field, San Francisco",
        description:      "Do you like running? Do you like meeting new people in the Stanford community? Then come and join the Stanford Club of San Francisco and Cardinal Young Alumni as we run the Crissy Field 5K! The race will be a great opportunity to meet some of your fellow athletic alumni while improving your health. You can get more information and register at the following link. The current price is $5 but may fluctuate as race day approaches.

Note:
You do NOT need to register through the alumni site. Just register at the following link and meet us there.
  After you have registered, please join our CYA/Stanford Club SF Running group here: https://groups.google.com/d/forum/cya-running

We'll post practice runs and socials to this email group.

Directions/Parking
We will likely meet up at the Sports Basement (610 Mason Street) near the event at 8:30am. (30 minutes prior to the start of the race)."
      },
      {
        name:             "Salsa dance class and party at Cocomo in Potrero",
        committee_id:     "6",
        event_state_id:   "3",
        start_date:       "2013-05-16",
        start_time:       "7:00PM",
        end_time:         "10:00PM",
        cost_member:      "25",
        cost_young_alumn: "25",
        cost_guest:       "30",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11952",
        address:          "Cafe Cocomo, 650 Indiana St, San Francisco CA",
        description:      "Join us at Café Cocomo for 'Thursday with Jake,' an amazing salsa instructor. At 7:00, we'll start with a glass of wine and Argentinian cheeses/snacks, followed by Jake's careful instruction at 8:00. The last part is the best part: dancing the night away (with your newly minted salsa moves), starting at 9:00, to a live band, which gathers dancers from across the Bay Area (the band usually starts around 10:00).
        Come see why Café Cocomo in Petrero is considered a “banana belt” of San Francisco. Colorful fairy lights, wide open dance floor, guys in hats (yes!): you will feel like you are in another time and place, especially when the lights go down and the band starts playing."
      },
      {
        name:             "Fete de la Musique - Soltice music night!",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-06-21",
        start_time:       "6:30PM",
        end_time:         "9:30PM",
        cost_member:      "15",
        cost_young_alumn: "15",
        cost_guest:       "20",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11953",
        address:          "Alliance Francaise Berkeley, 2004 Woolsey St, Berkeley CA 94703",
        description:      "Celebrate the summer solstice the way they do in France – with a music festival. We are planning a culinary/musical event, running from around 6:30-9:30 p.m. on Friday, June 21, organized by the Alliance Francaise of Berkeley. Bring your own food for a delicious potluck dinner, and/or bring your own instruments. Each year is different, so we will see what the music gods of the Stanford Club, Stanford Pride AND the Alliance Francaise provide us this magical summer night.
        Fete de la Musique is an annual event in France that falls on the night of the summer solstice. That night, each year people throughout France (and now all of Europe) celebrate beautiful music, be it street music or indoor concerts. Join The Stanford Club of San Francisco, Stanford Pride and Bay Area Cabaret in San Francisco. We hope feel you have escaped to a summer night in Paris as you turn the corner to our French musical, culinary venue and that it is the perfect setting for the longest night of the year!"
      },
      {
        name:             "East Palo Alto - Reading Rainbow in the Park",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-05-18",
        start_time:       "9:00AM",
        end_time:         "4:00PM",
        cost_member:      "Free",
        cost_young_alumn: "Free",
        cost_guest:       "Free",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11647",
        address:          "Bell Street Park, 550 Bell Street Park, East Palo Alto CA 94303",
        description:      "Please join fellow alumni in sharing the joy and fun of reading with youth and families at 'Reading Rainbow in the Park, East Palo Alto', a literacy activities fair as part of the Stanford Day of Service. Since the event is open to the public, we are expecting 300+ to come out from the community.

There is a huge need to increase the reading levels of youth in East Palo Alto. The majority of the youth in EPA (Stanford's backyard) are reading below grade level with many youth apathetic and unaware of the effects of lower reading levels. If you want different for our youth, come out and support this event where we will be giving away books and sharing our joy of reading!

Please consider volunteering for this event. We need at least 100 volunteers to make this happen!

Contact:
Marlayna Tuiasosopo
tui3@stanfordalumni.org"
      },
      {
        name:             "Wine Pairing & Dinner at Marine's Memorial",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-04-20",
        start_time:       "6:30PM",
        end_time:         "9:00PM",
        cost_member:      "87",
        cost_young_alumn: "87",
        cost_guest:       "97",
        registration_url: "http://alumni.stanford.edu/goto/event11655",
        address:          "Marine's Memorial Club, 609 Sutter Street, San Francisco CA 94118",
        description:      "Join the San Francisco Chapter of the German Wine Society (GWS) who is excited to meet and welcome the San Francisco Stanford Club of San Francisco for a special evening of great food and delicious reisling wines, paired with each course. Some of the wines will come from the private cellar of Barry and Joan Boothe who are members of both the GWS and the SF Stanford Alumni Association!

Included are salad, entree, dessert and delicious coffee plus a hand-picked selection of wines – from dry Kabinetts to famous sweet desert Rieslings.

Entree selections:
- Sonoma Chicken – Mary's Natural Chicken Breast cooked with Artichokes, Roasted Tomatoes, Gigande Beans over wilted Greens, topped with a Truffle Aioli.
- Grilled Salmon wit a Red Miso Glaze, Crispy Sesame Noodle Cake and Pickled Asian Slaw."
      },
      {
        name:             "Russ Feingold Talks with the Stanford Club of San Francisco",
        committee_id:     "7",
        event_state_id:   "3",
        start_date:       "2013-05-23",
        start_time:       "7:00PM",
        end_time:         "9:00PM",
        cost_member:      "20",
        cost_young_alumn: "10",
        cost_guest:       "20",
        registration_url: "http://alumni.stanford.edu/goto/event11916",
        address:          "University Club, 800 Powell Street, San Francisco CA",
        description:      "U.S. Senate:  Cooling Saucer or Deep Freezer?

Join us for cocktails and a fascinating talk by visiting professor to Stanford Law School and author of bestseller 'While America Sleeps,' former Senator Russ Feingold.
About the speaker:
For eighteen years, Russell D. Feingold represented Wisconsin in the United States Senate. He served on the Judiciary, Foreign Relations, Budget, and Intelligence Committees. He also served in the Wisconsin State Senate from 1983 to 1993 and practiced law for six years at Foley & Lardner and LaFollette & Sinykin in Madison, Wisconsin. Feingold graduated from the University of Wisconsin-Madison in 1975, received a degree from Oxford University as a Rhodes Scholar in 1977, and then went on to Harvard Law School, where he earned his degree in 1979.

Since leaving the Senate, Feingold has been a visiting professor at Marquette University Law School and the inaugural Mimi and Peter E. Haas Distinguished Visitor at the Haas Center for Public Service at Stanford University during winter quarter 2012.

Feingold is also the author of the New York Times bestseller While America Sleeps, about what America has done wrong both domestically and abroad since the terrorist attacks of September 11, and what steps must be taken to ensure that the next ten years are focused on the international problems that threaten America and its citizens."
      },
      {
        name:             "Farm-to-Table Luncheon at Willow Farm - SOLD OUT",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-06-15",
        start_time:       "1:00PM",
        end_time:         "3:00PM",
        cost_member:      "60",
        cost_young_alumn: "60",
        cost_guest:       "60",
        registration_url: "SOLD OUT",
        address:          "2405 Roberts Rd., Penngrove CA 94951",
        description:      "Join the Stanford Club of San Francisco for a farm-to-table luncheon at Willow Farm, a small organic farm in Sonoma County. The property has a pasture, herb and rose gardens, a wooded hillside and lichen-covered stone walls, and is surrounded by other farms and open space. We'll enjoy a three-course menu with fresh local produce that's available in mid-June. You are welcome to bring your own wine to enjoy with the luncheon. We will be joined by Joel Weirauch from Weirauch Farm, who will speak to us about producing organic artisan cow cheese and farmstead sheep cheese.
Note: A vegetarian option is available upon request.
Farm-to-Table Menu
- Wild Baby Arugula
- Shaved Easter Egg Radishes, Fennel and Chevre

- Roasted Baby Carrots with Tarragon and Citrus
- Artisan Bread Basket
- Marinated Olives

- Rosemary Roasted Chicken
- On Red Frill Mustard

- Green Pea Risotto
- Grilled Onions with Thyme, Gorgonzola and Balsamic Drizzle

Dessert
- Spring Fruit Pavlova

- Fresh Brewed Iced Tea
- Minted Lemonade"
      },
      {
        name:             "Stanford Job Seekers' Monthly Meeting",
        committee_id:     "2",
        event_state_id:   "3",
        start_date:       "2013-03-20",
        start_time:       "5:00PM",
        end_time:         "6:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "",
        registration_url: "http://alumni.stanford.edu/goto/event11346",
        address:          "SF Main Library",
        description:      "Join 15 alums to enjoy fellow alum Rainbow Chen's gifts of strategic, tactical, and intuitive coaching, including 8 years teaching career management at Stanford GSB. It's her birthday week, but it's your living into your full career & life potential that will be the gift to the world. Come ask for what you need to move forward in your job search, career management, & life fulfillment."
      },
      {
        name:             "Stanford Job Seekers' Monthly Meeting",
        committee_id:     "2",
        event_state_id:   "3",
        start_date:       "2013-01-29",
        start_time:       "5:00PM",
        end_time:         "6:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "",
        registration_url: "http://alumni.stanford.edu/goto/event10994",
        address:          "SF Main Library",
        description:      "Join 15 alums to enjoy fellow alum Rainbow Chen's gifts of strategic, tactical, and intuitive coaching, including 8 years teaching career management at Stanford GSB. It's her birthday week, but it's your living into your full career & life potential that will be the gift to the world. Come ask for what you need to move forward in your job search, career management, & life fulfillment."
      },
      {
        name:             "Stanford Job Seekers' Monthly Meeting",
        committee_id:     "2",
        event_state_id:   "3",
        start_date:       "2013-02-26",
        start_time:       "5:00PM",
        end_time:         "6:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "",
        registration_url: "http://alumni.stanford.edu/goto/event11118",
        address:          "SF Main Library",
        description:      "Join 15 alums to enjoy fellow alum Rainbow Chen's gifts of strategic, tactical, and intuitive coaching, including 8 years teaching career management at Stanford GSB. It's her birthday week, but it's your living into your full career & life potential that will be the gift to the world. Come ask for what you need to move forward in your job search, career management, & life fulfillment."
      },
      {
        name:             "Save the Bay",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-03-23",
        start_time:       "9:00AM",
        end_time:         "12:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11478",
        address:          "The Baylands, Palo Alto",
        description:      "Join other alums and bring friends and family for this fun all-age morning at the beautiful Baylands Nature Preserve in Palo Alto. We'll be helping Save the Bay toward their goal of planting 30,000 seedlings by the end of March. A great way to celebrate the arrival of spring and also help save our bay!"
      },
      {
        name:             "Urban Agriculture Classes",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-03-16",
        start_time:       "12:00PM",
        end_time:         "5:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11478",
        address:          "Please Touch Community Garden, 165 Grove St, SF.",
        description:      "Urban agriculture educators Rob Joyce ('95) and Jay Rosenberg are offering classes at two community gardens over two weekends. Choose one or all of the four classes -- see descriptions in the link below. Get ready for the spring season, and come back in May for a free event with the Beyond the Farm day of service!
        Consider how the local conditions affect water conservation, crop selection, and using space. We will share successful strategies, from rainwater catchment to potato towers, and together we will discuss the challenges of urban agriculture while we build fun solutions.

Lunch break from 1:00pm - 2:00pm

"
      },
      {
        name:             "Land's End Hike",
        committee_id:     "8",
        event_state_id:   "3",
        start_date:       "2013-03-03",
        start_time:       "12:00PM",
        end_time:         "5:00PM",
        cost_member:      "Free",
        cost_young_alumn: "",
        cost_guest:       "5",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11287",
        address:          "Land's End San Fransisco",
        description:      "Lands End is a top-cliff hike along the rockiest part of San Francisco that also offers magnificent views of the shorline. It is a relatively easy 3.4-mile hike that should take 1-3 hours to complete. This includes a stop for a picnic lunch somewhere along the way.

Post-hike, we'll visit the Cliff House along Point Lobos for a 'special' beverage - optional. This venue offers the chance to relax while overlooking the ocean.

Bring the camera, and don't miss out on this wonderful opportunity."
      },
      {
        name:             "Mushroom Foraging",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-03-10",
        start_time:       "9:00AM",
        end_time:         "2:00PM",
        cost_member:      "98",
        cost_young_alumn: "98",
        cost_guest:       "103",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=11202",
        address:          "14 Matheson St., Healdsburg CA 95448",
        description:      "Join chef and forager Elissa Rubin-Mahon as she leads a morning foray through the beautiful hills above Healdsburg, one of the best edible wild mushroom regions in the entire world. Participants will learn the basics of wild mushroom foraging, including looking for synergetic trees and terrain, recommended equipment, mushroom identification, safety and handling. We'll focus on the most easily recognizable edible mushrooms of our region. After working up an appetite from our tromp in the woods, we'll have a cooking demonstration and four-course wild mushroom lunch with local wine pairings."
      },
      {
        name:             "Networking and Organic Wine Tasting",
        committee_id:     "6",
        event_state_id:   "3",
        start_date:       "2013-01-24",
        start_time:       "6:00PM",
        end_time:         "10:00PM",
        cost_member:      "35",
        cost_young_alumn: "35",
        cost_guest:       "35",
        registration_url: "http://alumni.stanford.edu/goto/wine_networking-2013-1",
        address:          "Pause Wine Bar 1666 Market Street San Francisco, CA",
        description:      "It will be a delicious evening tasting 5 distinct, organically grown, farm friendly wines while networking with other Stanford Alumni and friends.

Chris Tavelli owner of Yield and Pause Wine Bars will host our tasting at his Market Street location right next to the famous Zuni Cafe in San Francisco. Chris is committed to supporting sustainable wine making and agriculture, so come to learn about organic wine making, support family operated wineries, and taste some wonderful wine with complementary nibbles.

We'll mingle during happy hour and plan to begin the tasting around 7p. After the tasting, we'll have plenty of time to socialize and network."
      },
      {
        name:             "Stanford Professor Leonard Susskind",
        committee_id:     "6",
        event_state_id:   "3",
        start_date:       "2013-02-05",
        start_time:       "6:00PM",
        end_time:         "7:00PM",
        cost_member:      "8",
        cost_young_alumn: "8",
        cost_guest:       "8",
        registration_url: " ",
        address:          "The Commonwealth Club, 595 Market Street, San Francisco",
        description:      "The Theoretical Minimum:
What You Need to Know to Start Doing Physics

With the generous cooperation of the Commonwealth Club of SF, we are happy to offer this special talk by Stanford Professor Leonard Susskind at Commonwealth Club member prices!
Prof. Susskind is Felix Bloch Professor in Theoretical Physics, Stanford University and Director of the Stanford Institute for Theoretical Physics.

Ever wish you knew more about physics? Want to know how to think like a physicist? Here is your chance. Come listen to world-class physicist Susskind, a father of string theory, to discuss the Theoretical Minimum – an alternative to the conventional go-to-college method. Susskind will discuss what you need to know to start doing physics and provide a tool kit for amateur scientists to learn physics at their own pace."
      },
      {
        name:             "Valentine's Aphrodisiacs Cooking Class - SOLD OUT",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-02-10",
        start_time:       "6:00PM",
        end_time:         "9:00PM",
        cost_member:      "95",
        cost_young_alumn: "95",
        cost_guest:       "95",
        registration_url: "http://alumni.stanford.edu/goto/event10482",
        address:          "Chef Joe's Culinary Salon 16 Sanchez Street #B San Francisco, CA 94114",
        description:      "Grab someone special and join the Stanford Club of San Francisco for an evening of cooking and romance just in time for Valentine's Day. Working alongside your date, you'll learn how to prepare fresh oyster's on the half shell with mignonette sauce, asparagus in puff pastry with gorgonzola sauce, strawberries dipped in chocolate fondue, and a champagne cocktail. Register early as space is limited to twelve people."
      },
      {
        name:             "Broadway's 'Golden Couple' in concert at The Fairmont",
        committee_id:     "1",
        event_state_id:   "3",
        start_date:       "2013-02-17",
        start_time:       "5:30PM",
        end_time:         "9:00PM",
        cost_member:      "40",
        cost_young_alumn: "40",
        cost_guest:       "47",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=10997",
        address:          "The Fairmont Hotel, 950 Mason Street, San Francisco CA 94108",
        description:      "Join fellow Stanford alums and friends at the Fairmont San Francisco's elegant and historic Venetian Room at 7 p.m. on Sunday, February 17th as Bay Area Cabaret presents three-time Tony nominee MARIN MAZZIE & her husband JASON DANIELEY. From 5:30-6:30 p.m. enjoy pre-show drink/snack at the Fairmont's Tonga Lounge, an icon of its own."
      },
      {
        name:             "Hands-on Bread Making Workshop - SOLD OUT",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-02-24",
        start_time:       "1:30PM",
        end_time:         "3:30PM",
        cost_member:      "49",
        cost_young_alumn: "49",
        cost_guest:       "49",
        registration_url: "http://alumni.stanford.edu/goto/event10225",
        address:          "La Victoria Bakery, 2937 24th Street, San Francisco, CA 94110",
        description:      "Home to the world's best sourdough, San Francisco is the culinary center of this beloved bread. Here's a chance to create that doughy magic on your own with a beginner's bread making class. In the workshop, we will be learning how to mix and develop dough by hand. We will start by mixing together a starter, flour, water, and salt. We will work with a variety of dough hydrations, and will learn about kneading, stretching and folding, and letting dough relax, all to develop the gluten. We will finish by developing the dough one final time, also known as shaping. You will take home a basket with rising dough, and will be able to bake it from your home oven. Hosted by Sour Flour (http://www.sourflour.org)."
      },
      {
        name:             "The Board Match by the Volunteer Center of San Francisco",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-02-27",
        start_time:       "5:30PM",
        end_time:         "7:30PM",
        cost_member:      "Free",
        cost_young_alumn: "Free",
        cost_guest:       "Free",
        registration_url: "http://theboardmatch.eventbrite.com",
        address:          "San Francisco Marriott Marquis, 55 4th Street, San Francisco, CA 94103",
        description:      "The Board Match is a singular event featuring 150 Bay Area nonprofits whose leadership will be on hand to talk to interested candidates about serving on their organization's board of directors. There will be a variety of organizations from large to small, focusing on everything from the environment to arts to youth.

Serving on a nonprofit board can provide fantastic opportunities for your personal and professional development. You can build new skills, network and broaden your knowledge of the community and provide essential skills to community nonprofits. We recommend bringing copies of your resume and business cards to The Board Match to share with your potential match."
      },
      {
        name:             "Speaker Event with Dr. Larry Diamond",
        committee_id:     "7",
        event_state_id:   "3",
        start_date:       "2013-02-28",
        start_time:       "5:00PM",
        end_time:         "8:30PM",
        cost_member:      "20",
        cost_young_alumn: "10",
        cost_guest:       "20",
        registration_url: "https://alumni.stanford.edu/get/page/events/details?event_id=10787",
        address:          "University Club 800 Powell Street,  San Francisco CA",
        description:      "The Arab Awakening - Will it Lead to Democracy?

Join us at the University Club in San Francisco for cocktails, mingling, and an insightful talk from Stanford Professor Larry Diamond: The Arab Awakening - Will it Lead to Democracy?

Over the course of 2011, the Arab world was seized with a series of popular uprisings seeking human dignity and political accountability and freedom. Arab authoritarian regimes have come under challenge as never before and already several prominent autocrats have fallen. But so far, democracy has tentatively emerged in only one country: Tunisia. There, and especially in Egypt and Libya, the struggle to build democracy confronts many obstacles, and in most of the rest of the region popular aspirations for democratic change have been obstructed. What are the prospects for democratic change in the Arab World -- and the implication for US foreign policy?

Larry Diamond, '73, MA '78, PhD '80, is a senior fellow at the Hoover Institution and the Freeman Spogli Institute for International Studies and director of the Center on Democracy, Development  and the Rule of Law. He is also faculty co-director of the Haas Center for Public Service. He teaches about comparative democratic development and post-conflict democracy building. In 2007, Professor Diamond was named Teacher of the Year and received the University's Dinkelspiel Award for Distinctive Contributions to Undergraduate Education. His latest book, The Spirit of Democracy: The Struggle to Build Free Societies throughout the World, explores the sources of global democratic progress and stress and the prospects for future democratic expansion."
      },
      {
        name:             "Kouign Amann Pastry Class",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-03-16",
        start_time:       "1:00PM",
        end_time:         "3:00PM",
        cost_member:      "50",
        cost_young_alumn: "50",
        cost_guest:       "50",
        registration_url: "http://alumni.stanford.edu/goto/event10976",
        address:          "713 York St. San Francisco, CA 94110",
        description:      "Kouign Amann (pronounced kween a-mon) is a Breton pastry, made with laminated dough and sugar. It's buttery and flaky on the inside, but crunchy and caramelized with sugar on the outside, similar to a cross between a croissant and a palmier. Join the Stanford Club of San Francisco and learn how to make this delicious pastry from scratch. You'll also learn tips for shaping and adding flavor to the dough. About the instructor: Namthip Paine has worked in some of San Francisco's finest kitchens, including most recently Luce at the Intercontinental Hotel, and Cortez, both of which earned Michelin stars during her tenure. Namthip graduated with honors from the California Culinary Academy's Pâtisserie and Baking Program."
      },
      {
        name:             "'Beyond the Farm' global day of service",
        committee_id:     "3",
        event_state_id:   "3",
        start_date:       "2013-03-16",
        start_time:       "1:00PM",
        end_time:         "3:00PM",
        cost_member:      "Free",
        cost_young_alumn: "Free",
        cost_guest:       "Free",
        registration_url: "http://alumni.stanford.edu/get/page/volunteering/beyondthefarm/",
        address:          "Stanford University, Stanford, CA",
        description:      "Interested in joining a project, or leading one? There will be an abundance of opportunity for a great day of service with other alums in the Bay Area -- join us!"
      },
      {
        name:             "Classic Cocktails Class with SF Mixology - SOLD OUT",
        committee_id:     "5",
        event_state_id:   "3",
        start_date:       "2013-04-25",
        start_time:       "6:00PM",
        end_time:         "8:00PM",
        cost_member:      "65",
        cost_young_alumn: "65",
        cost_guest:       "65",
        registration_url: "http://alumni.stanford.edu/get/page/volunteering/beyondthefarm/",
        address:          "Raven Bar, 1151 Folsom Street, San Francisco, CA 94103",
        description:      "Join the Stanford Club of San Francisco for a hands-on class where you can learn the art of crafting classic cocktails. An exciting crash course in mixology and bartending basics, you get a chance to taste a chronological history of cocktails and earn how alcohol overlaps human endeavors. Explore the new renaissance of classic cocktails, tasting the bittered slings of the early 1800s, the original martinis of pre-prohibition America, and the revival of fresh ingredients in the tiki movement of the mid-20th century. After a mind-blowing excursion though the world of mixology, you'll feel the thrill and intensity of being behind a real bar, with time constraints and mixology challenges, all while maintaining the high standards of customer service to your fellow classmates. Hosted by SF Mixology"
      }
    ]
  )
  
end
