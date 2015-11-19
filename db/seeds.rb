# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


seekers = []
20.times do |i|
  seekers.push(Seeker.create!({first_name: Forgery('name').first_name,
                last_name: Forgery('name').last_name,
                gender: Forgery('personal').abbreviated_gender,
                photo_url: "http://lorempixel.com/400/200/people/",
                city: Forgery('address').city,
                email: Forgery('internet').email_address,
                phone_number: Forgery('address').phone,
                bio: Forgery('lorem_ipsum').paragraph,
                }))
end

providers = []
20.times do |i|
  # create user in here, assign to variable, and then use below
  
  providers.push(Provider.create!({organization_name: Forgery('name').company_name,
                photo_url: "http://lorempixel.com/400/200/technics/",
                city: Forgery('address').city,
                POC_first_name: Forgery('name').first_name,
                POC_last_name: Forgery('name').last_name,
                email: Forgery('internet').email_address,
                phone_number: Forgery('address').phone,
                bio: Forgery('lorem_ipsum').paragraph,
                #user: user,
                }))
end


## create interests rows for join table
## adjust to create a posting - and then pick a random set of seekers
# 20.times do
#   # create new Interests
#   random_seeker = Seeker.all.sample
#   random_posting = "
#   random_posting.create_interest(seeker: random_seeker)
#
# end
