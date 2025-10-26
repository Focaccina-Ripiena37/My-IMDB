# Seed di esempio (dati indicativi). Esegui `rails db:seed` dopo le migrazioni.

Actor.destroy_all
Movie.destroy_all
Casting.destroy_all

actors = [
  { name: "Robert Downey Jr.",  dob: "1965-04-04", birthplace: "New York City, USA", net_worth: 300_000_000 },
  { name: "Scarlett Johansson", dob: "1984-11-22", birthplace: "New York City, USA", net_worth: 165_000_000 },
  { name: "Chris Evans",         dob: "1981-06-13", birthplace: "Boston, USA",       net_worth: 110_000_000 },
  { name: "Tom Hanks",           dob: "1956-07-09", birthplace: "Concord, USA",      net_worth: 400_000_000 },
  { name: "Emma Stone",          dob: "1988-11-06", birthplace: "Scottsdale, USA",   net_worth: 40_000_000 },
  { name: "Leonardo DiCaprio",   dob: "1974-11-11", birthplace: "Los Angeles, USA",  net_worth: 260_000_000 },
  { name: "Natalie Portman",     dob: "1981-06-09", birthplace: "Jerusalem, Israel", net_worth: 90_000_000 },
  { name: "Keanu Reeves",        dob: "1964-09-02", birthplace: "Beirut, Lebanon",    net_worth: 380_000_000 },
  { name: "Florence Pugh",       dob: "1996-01-03", birthplace: "Oxford, UK",        net_worth: 8_000_000 },
  { name: "Denzel Washington",   dob: "1954-12-28", birthplace: "Mount Vernon, USA", net_worth: 280_000_000 },
  { name: "Jon Favreau",         dob: "1966-10-19", birthplace: "Queens, USA",       net_worth: 100_000_000 },
  { name: "Tom Cruise",          dob: "1962-07-03", birthplace: "Syracuse, USA",     net_worth: 600_000_000 }
]

actors.each { |a| Actor.create!(a) }

movies = [
  { title: "Iron Man",            director: "Jon Favreau",       duration: 126, rating: 5, plot: "Un industriale miliardario costruisce un'armatura hi‑tech.", location: "Malibu, California" },
  { title: "Lost in Translation", director: "Sofia Coppola",     duration: 102, rating: 5, plot: "Due estranei a Tokyo stringono un legame inatteso.", location: "Tokyo, Giappone" },
  { title: "Forrest Gump",        director: "Robert Zemeckis",   duration: 142, rating: 5, plot: "La straordinaria vita di Forrest.", location: "Alabama, USA" },
  { title: "La La Land",          director: "Damien Chazelle",   duration: 128, rating: 4, plot: "Sogni e musica a Los Angeles.", location: "Los Angeles, California" },
  { title: "Inception",           director: "Christopher Nolan", duration: 148, rating: 5, plot: "Un team entra nei sogni.", location: "Parigi / Los Angeles / Tokyo" },
  { title: "Black Swan",          director: "Darren Aronofsky",  duration: 108, rating: 4, plot: "Ossessione e perfezione nel balletto.", location: "New York City, USA" },
  { title: "John Wick",           director: "Chad Stahelski",    duration: 101, rating: 4, plot: "Vendetta di un ex sicario.", location: "New York City, USA" },
  { title: "Training Day",        director: "Antoine Fuqua",     duration: 122, rating: 4, plot: "Un giorno estremo nella narcotici.", location: "Los Angeles, California" },
  { title: "Vanilla Sky",         director: "Cameron Crowe",     duration: 141, rating: 3, plot: "Sogno e realtà si confondono.", location: "New York City" }
]

movies.each { |m| Movie.create!(m) }

cast = [
  [ "Iron Man", "Robert Downey Jr.", "Tony Stark / Iron Man" ],
  [ "Iron Man", "Scarlett Johansson", "Natasha Romanoff" ],
  [ "Lost in Translation", "Scarlett Johansson", "Charlotte" ],
  [ "Forrest Gump", "Tom Hanks", "Forrest Gump" ],
  [ "La La Land", "Emma Stone", "Mia Dolan" ],
  [ "Inception", "Leonardo DiCaprio", "Dom Cobb" ],
  [ "Black Swan", "Natalie Portman", "Nina Sayers" ],
  [ "John Wick", "Keanu Reeves", "John Wick" ],
  [ "Training Day", "Denzel Washington", "Alonzo Harris" ],
  [ "Inception", "Florence Pugh", "Ariadne (cameo fittizio)" ],
  [ "La La Land", "Chris Evans", "Keith (fittizio)" ],
  [ "Iron Man", "Jon Favreau", "Happy Hogan" ],
  [ "Vanilla Sky", "Tom Cruise", "David Aames" ]
]

cast.each do |movie_title, actor_name, character|
  Casting.create!(movie: Movie.find_by!(title: movie_title), actor: Actor.find_by!(name: actor_name), character: character)
end
