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
                photo_url: Forgery('internet').domain_name,
                city: Forgery('address').city,
                email: Forgery('internet').email_address,
                phone_number: Forgery('address').phone,
                bio: Forgery('lorem_ipsum').paragraph,
                }))
end

binding.pry

# organization_name
# photo_url
# city
# POC_first_name
# POC_last_name
# email
# phone_number
# bio
