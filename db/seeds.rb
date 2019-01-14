# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"
require "date"

csv_object = CSV.read('db/peliculas.csv', headers: true,encoding: "ISO8859-1")
csv_object.each do |row|
    Movie.create(
        {title: row["movie_title"], \
         director: row["director_name"], \
         cast: "#{row['actor_1_name']}, #{row['actor_2_name']}", \
         plan: "basico", \
         rating: row["imdb_score"].to_i \
        })
    end
test_user = User.create({username: "user1", 
            pass: "pass1",
            dob: Date.parse("1998/02/03"),
            type_account: "basico",
            city: "Guayaquil",
            country: "Ecuador"
            })

test_user2 = User.create({username: "user2", 
            pass: "pass2",
            dob: Date.parse("1997/08/07"),
            type_account: "basico",
            city: "Guayaquil",
            country: "Ecuador"
            })

pelis = Movie.order("rating DESC").distinct.first(10)
pelis2 = Movie.distinct.first(10)

for i in 0...pelis.length
    View.create({
    date: Date.today(),
    rating: 10,
    user_id: test_user.id,
    movie_id: pelis[i].id
    })
end

for j in 0...pelis2.length
    View.create({
    date: Date.today(),
    rating: j,
    user_id: test_user2.id,
    movie_id: pelis[j].id
    })
end