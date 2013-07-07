namespace :db do
  desc "Fill database with starting data"
  task populate: :environment do
    make_admin
  end 
end

def make_admin
  admin = 
  User.create!( first_name: "Admin",
                last_name:  "User",
                email:      "admin@test.com",
                password:   "foobar",
                password_confirmation: "foobar")
  admin.toggle!(:admin)

  User.create!( first_name: "Test",
                last_name:  "User",
                email:      "user@test.com",
                password:   "foobar",
                password_confirmation: "foobar")
end
  
# def make_wines
#   10.times do |n|
#     name  = ['Pinot Noir','Chardonnay','Cabernet Sauvignon',
#               'Beaujolais','Hermitage','Savennieres'].shuffle.first
#     year  = (1950..2012).to_a.shuffle.first
#     Wine.create!(name: name,
#                  year: year)
#   end
# end

# def make_user_wines
#   user = User.all
#   user.each do |u|
#     x = (1..2).to_a.shuffle.first
#     w = (1..10).to_a.shuffle
#     n = 0
#     x.times do
#       n += 1
#       u.user_wines.create!( wine_id: w[n] )
#     end
#   end
# end

# def make_user_wine_logs
#   user_wine = UserWine.all
#   user_wine.each do |uw|
#     x = (2..3).to_a.shuffle.first
#     x.times do 
#       action = ['Bought','Drank'].shuffle.first
#       if action == 'Drank'
#         quantity = (1..5).to_a.shuffle.first
#       else
#         quantity = (1..12).to_a.shuffle.first
#       end
#       uw.user_wine_logs.create!(action: action,
#                                 increment_quantity: quantity )
#       sleep(1)
#     end
#   end    
# end
