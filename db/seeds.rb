# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [{name: 'Control', security_clearance: "Top Secret", password: 'Chorizo', title: 'Director', person_attributes: {first_name: 'John', last_name: 'Rodriguez', bio: 'Long time agent, son of Severance.'}}, 
         {name: 'Grace', security_clearance: 'Top Secret', password: 'acceptance', title: 'Assistant Director', person_attributes: {first_name: 'Grace', last_name: 'Stevenson', bio: 'Former field agent, sidelined because of an injury suffered on assignment. Been at the Southern Reach for 15 years.'}},
         {name: 'Mouse', security_clearance: 'Secret', password: 'in the attic', title: 'Scientist', person_attributes: {first_name: 'Whitby', last_name: 'Cambell', bio: 'Formerly a curious and endeavoring individual who has now become a loner. Has been submitting transfer requests monthly for over a year.'}},
         {name: 'DJC', security_clearance: 'Top Secret', password: 'Cat in the hat', title: 'Head, Science Division', person_attributes: {first_name: 'David', last_name: 'Cheney', bio: 'Has been at the Southern Reach since founding. Has long become pessimistic the research will lead to any understanding of Area X.'}},
         ]


people = [{first_name: 'Saul', last_name: 'Evans', bio: 'Lighthouse keeper on the Forgotten Coast before the border fell.'},
          {first_name: "cythia", last_name: 'Ventress', bio: 'The former director of the Southern Reach, not seen since she left on the 12th Expedition.'}]


events = [{name: 'The Border Falling', location: 'The Forgotten Coast', date: '1979-5-8', description: "This was the creation of the current border of Area X. All people within border's confines assumed dead.", security_clearance: 'Classified'},
          {name: 'First Expedition', location: 'Area X', date: '1981-6-17', description: 'The tragic first expedition. Only Lowry survived.', security_clearance: 'Secret'}]


documents = [{user_id: 3, event_id: 1, title: 'The Wormhole Theory', content: "This is the theory that Area X actually forms a wormhole to another place in space time.", security_clearance: "Secret"}]

users.each do |u|
    User.create(u)
end

events.each do |e|
    Event.create(e)
end

people.each do |pe|
    Person.create(pe)
end


documents.each do |t|
    Document.new(t)
end
    