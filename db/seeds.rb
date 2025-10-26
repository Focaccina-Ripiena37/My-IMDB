# Seed di esempio (dati indicativi). Esegui `rails db:seed` dopo le migrazioni.

Actor.destroy_all
Movie.destroy_all
Casting.destroy_all

actors = [
  { name: "Robert Downey Jr.",  dob: "1965-04-04", birthplace: "New York City, USA", net_worth: 300_000_000, awards: <<~TXT
      Oscar 2024 – Miglior attore non protagonista (Oppenheimer)
      Golden Globe – Miglior attore in una serie TV (Ally McBeal)
      BAFTA – Nomination (Chaplin)
    TXT
  },
  { name: "Scarlett Johansson", dob: "1984-11-22", birthplace: "New York City, USA", net_worth: 165_000_000, awards: <<~TXT
      BAFTA 2004 – Miglior attrice (Lost in Translation)
      Tony Award 2010 – Miglior attrice non protagonista (A View from the Bridge)
      Oscar – 2 nomination (Marriage Story; Jojo Rabbit)
    TXT
  },
  { name: "Chris Evans",         dob: "1981-06-13", birthplace: "Boston, USA",       net_worth: 110_000_000, awards: <<~TXT
      People’s Choice Awards – Favorite Action Movie Actor
      Kids’ Choice Awards – Favorite Butt-Kicker
    TXT
  },
  { name: "Tom Hanks",           dob: "1956-07-09", birthplace: "Concord, USA",      net_worth: 400_000_000, awards: <<~TXT
      Oscar 1994 – Miglior attore (Philadelphia)
      Oscar 1995 – Miglior attore (Forrest Gump)
      Golden Globe – Miglior attore (Philadelphia; Forrest Gump; Cast Away)
    TXT
  },
  { name: "Emma Stone",          dob: "1988-11-06", birthplace: "Scottsdale, USA",   net_worth: 40_000_000, awards: <<~TXT
      Oscar 2017 – Miglior attrice (La La Land)
      Oscar 2024 – Miglior attrice (Poor Things)
      Golden Globe – Miglior attrice (La La Land; Poor Things)
    TXT
  },
  { name: "Leonardo DiCaprio",   dob: "1974-11-11", birthplace: "Los Angeles, USA",  net_worth: 260_000_000, awards: <<~TXT
      Oscar 2016 – Miglior attore (The Revenant)
      Golden Globe – Miglior attore (The Wolf of Wall Street; The Revenant)
      BAFTA – Miglior attore (The Revenant)
    TXT
  },
  { name: "Natalie Portman",     dob: "1981-06-09", birthplace: "Jerusalem, Israel", net_worth: 90_000_000, awards: <<~TXT
      Oscar 2011 – Miglior attrice (Black Swan)
      Golden Globe – Miglior attrice (Black Swan; Closer)
      BAFTA – Miglior attrice (Black Swan)
    TXT
  },
  { name: "Keanu Reeves",        dob: "1964-09-02", birthplace: "Beirut, Lebanon",    net_worth: 380_000_000, awards: <<~TXT
      MTV Movie Awards – Miglior performance (Speed; The Matrix)
      People’s Choice Awards – Favorite Movie Actor
    TXT
  },
  { name: "Florence Pugh",       dob: "1996-01-03", birthplace: "Oxford, UK",        net_worth: 8_000_000, awards: <<~TXT
      BAFTA – Nomination (Little Women)
      British Independent Film Award – Best Actress (Lady Macbeth)
    TXT
  },
  { name: "Denzel Washington",   dob: "1954-12-28", birthplace: "Mount Vernon, USA", net_worth: 280_000_000, awards: <<~TXT
      Oscar 1990 – Miglior attore non protagonista (Glory)
      Oscar 2002 – Miglior attore (Training Day)
      Golden Globe – Cecil B. DeMille Award
    TXT
  },
  { name: "Jon Favreau",         dob: "1966-10-19", birthplace: "Queens, USA",       net_worth: 100_000_000, awards: <<~TXT
      Saturn Award – Miglior regia (nomination)
      Hollywood Film Awards – Filmmaker Award
    TXT
  },
  { name: "Tom Cruise",          dob: "1962-07-03", birthplace: "Syracuse, USA",     net_worth: 600_000_000, awards: <<~TXT
      Oscar – 3 nomination (Born on the Fourth of July; Jerry Maguire; Magnolia)
      Golden Globe – Miglior attore (Born on the Fourth of July; Jerry Maguire; Magnolia)
    TXT
  },
  { name: "Carrie-Anne Moss",    dob: "1967-08-21", birthplace: "Vancouver, Canada",  net_worth: 4_000_000, awards: <<~TXT
      SAG Awards – Miglior cast (nomination, The Matrix)
    TXT
  },
  { name: "Laurence Fishburne",  dob: "1961-07-30", birthplace: "Augusta, USA",       net_worth: 30_000_000, awards: <<~TXT
      Emmy Awards – Miglior attore (Triumph at City Hall)
    TXT
  },
  { name: "John Travolta",       dob: "1954-02-18", birthplace: "Englewood, USA",     net_worth: 250_000_000, awards: <<~TXT
      Golden Globe – Miglior attore (Get Shorty)
    TXT
  },
  { name: "Uma Thurman",         dob: "1970-04-29", birthplace: "Boston, USA",        net_worth: 45_000_000, awards: <<~TXT
      Golden Globe – Miglior attrice (Hysterical Blindness)
    TXT
  },
  { name: "Samuel L. Jackson",   dob: "1948-12-21", birthplace: "Washington, D.C., USA", net_worth: 250_000_000, awards: <<~TXT
      Oscar 2022 – Honorary Award
    TXT
  },
  { name: "Bruce Willis",        dob: "1955-03-19", birthplace: "Idar-Oberstein, Germany", net_worth: 250_000_000, awards: <<~TXT
      Golden Globe – Miglior attore (Moonlighting)
    TXT
  },
  { name: "Brad Pitt",           dob: "1963-12-18", birthplace: "Shawnee, USA",       net_worth: 400_000_000, awards: <<~TXT
      Oscar 2020 – Miglior attore non protagonista (Once Upon a Time in Hollywood)
    TXT
  },
  { name: "Edward Norton",       dob: "1969-08-18", birthplace: "Boston, USA",        net_worth: 300_000_000, awards: <<~TXT
      Golden Globe – Miglior attore non protagonista (Primal Fear)
    TXT
  },
  { name: "Helena Bonham Carter", dob: "1966-05-26", birthplace: "London, UK",        net_worth: 60_000_000, awards: <<~TXT
      BAFTA – Miglior attrice non protagonista (The King's Speech)
    TXT
  },
  { name: "Tim Robbins",         dob: "1958-10-16", birthplace: "West Covina, USA",   net_worth: 70_000_000, awards: <<~TXT
      Oscar 2004 – Miglior attore non protagonista (Mystic River)
    TXT
  },
  { name: "Morgan Freeman",      dob: "1937-06-01", birthplace: "Memphis, USA",       net_worth: 250_000_000, awards: <<~TXT
      Oscar 2005 – Miglior attore non protagonista (Million Dollar Baby)
    TXT
  },
  { name: "Elijah Wood",         dob: "1981-01-28", birthplace: "Cedar Rapids, USA",  net_worth: 20_000_000, awards: <<~TXT
      SAG Awards – Miglior cast (The Lord of the Rings)
    TXT
  },
  { name: "Ian McKellen",        dob: "1939-05-25", birthplace: "Burnley, UK",        net_worth: 60_000_000, awards: <<~TXT
      Golden Globe – Cecil B. DeMille Award (nomination)
    TXT
  },
  { name: "Viggo Mortensen",     dob: "1958-10-20", birthplace: "New York City, USA", net_worth: 40_000_000, awards: <<~TXT
      Oscar – 3 nomination (Captain Fantastic; Green Book; Eastern Promises)
    TXT
  },
  { name: "Orlando Bloom",       dob: "1977-01-13", birthplace: "Canterbury, UK",     net_worth: 40_000_000, awards: <<~TXT
      SAG Awards – Miglior cast (The Lord of the Rings)
    TXT
  },
  { name: "Cate Blanchett",      dob: "1969-05-14", birthplace: "Melbourne, Australia", net_worth: 95_000_000, awards: <<~TXT
      Oscar – Miglior attrice (Blue Jasmine; TÁR)
    TXT
  },
  { name: "Christian Bale",      dob: "1974-01-30", birthplace: "Haverfordwest, UK",  net_worth: 120_000_000, awards: <<~TXT
      Oscar 2011 – Miglior attore non protagonista (The Fighter)
    TXT
  },
  { name: "Heath Ledger",        dob: "1979-04-04", birthplace: "Perth, Australia",   net_worth: 16_000_000, awards: <<~TXT
      Oscar 2009 – Miglior attore non protagonista (The Dark Knight)
    TXT
  },
  { name: "Gary Oldman",         dob: "1958-03-21", birthplace: "London, UK",         net_worth: 40_000_000, awards: <<~TXT
      Oscar 2018 – Miglior attore (Darkest Hour)
    TXT
  },
  { name: "Matt Damon",          dob: "1970-10-08", birthplace: "Cambridge, USA",     net_worth: 170_000_000, awards: <<~TXT
      Oscar 1998 – Miglior sceneggiatura originale (Good Will Hunting)
    TXT
  },
  { name: "Robin Williams",      dob: "1951-07-21", birthplace: "Chicago, USA",       net_worth: 50_000_000, awards: <<~TXT
      Oscar 1998 – Miglior attore non protagonista (Good Will Hunting)
    TXT
  },
  { name: "Ben Affleck",         dob: "1972-08-15", birthplace: "Berkeley, USA",      net_worth: 150_000_000, awards: <<~TXT
      Oscar 2013 – Miglior film (Argo)
    TXT
  },
  { name: "Franka Potente",      dob: "1974-07-22", birthplace: "Münster, Germany",   net_worth: 10_000_000, awards: <<~TXT
      German Film Awards – Best Actress (Run Lola Run)
    TXT
  },
  { name: "Clive Owen",          dob: "1964-10-03", birthplace: "Coventry, UK",       net_worth: 30_000_000, awards: <<~TXT
      Golden Globe – Miglior attore non protagonista (Closer)
    TXT
  },
  { name: "Russell Crowe",       dob: "1964-04-07", birthplace: "Wellington, New Zealand", net_worth: 120_000_000, awards: <<~TXT
      Oscar 2001 – Miglior attore (Gladiator)
    TXT
  },
  { name: "Joaquin Phoenix",     dob: "1974-10-28", birthplace: "San Juan, Puerto Rico", net_worth: 80_000_000, awards: <<~TXT
      Oscar 2020 – Miglior attore (Joker)
    TXT
  },
  { name: "Johnny Depp",         dob: "1963-06-09", birthplace: "Owensboro, USA",     net_worth: 150_000_000, awards: <<~TXT
      Golden Globe – Miglior attore (Sweeney Todd)
    TXT
  },
  { name: "Keira Knightley",     dob: "1985-03-26", birthplace: "London, UK",         net_worth: 80_000_000, awards: <<~TXT
      BAFTA – Nomination (Pride & Prejudice)
    TXT
  }
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
  { title: "Vanilla Sky",         director: "Cameron Crowe",     duration: 141, rating: 3, plot: "Sogno e realtà si confondono.", location: "New York City" },
  { title: "The Matrix",          director: "Lana & Lilly Wachowski", duration: 136, rating: 5, plot: "Un hacker scopre la verità sulla realtà simulata.", location: "Sydney / Los Angeles" },
  { title: "Pulp Fiction",        director: "Quentin Tarantino",  duration: 154, rating: 5, plot: "Storie criminali intrecciate a Los Angeles.", location: "Los Angeles, California" },
  { title: "Fight Club",          director: "David Fincher",      duration: 139, rating: 5, plot: "Un club di lotta sotterraneo sfugge al controllo.", location: "Los Angeles / Wilmington" },
  { title: "The Shawshank Redemption", director: "Frank Darabont", duration: 142, rating: 5, plot: "Due prigionieri stringono un'amicizia liberatoria.", location: "Mansfield, Ohio" },
  { title: "The Lord of the Rings: The Fellowship of the Ring", director: "Peter Jackson", duration: 178, rating: 5, plot: "La Compagnia parte per distruggere l'Unico Anello.", location: "Nuova Zelanda" },
  { title: "The Dark Knight",     director: "Christopher Nolan",  duration: 152, rating: 5, plot: "Batman affronta il Joker per salvare Gotham.", location: "Chicago / Hong Kong" },
  { title: "Good Will Hunting",   director: "Gus Van Sant",       duration: 126, rating: 5, plot: "Un genio ribelle cerca il proprio posto nel mondo.", location: "Boston, Massachusetts" },
  { title: "The Bourne Identity", director: "Doug Liman",         duration: 119, rating: 4, plot: "Un uomo senza memoria scopre di essere una spia.", location: "Parigi / Zurigo" },
  { title: "Gladiator",           director: "Ridley Scott",       duration: 155, rating: 5, plot: "Un generale romano diventa gladiatore per vendetta.", location: "Roma / Marocco" },
  { title: "Pirates of the Caribbean: The Curse of the Black Pearl", director: "Gore Verbinski", duration: 143, rating: 4, plot: "Pirati e maledizioni nei Mari dei Caraibi.", location: "Caraibi" }
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
  [ "Vanilla Sky", "Tom Cruise", "David Aames" ],
  [ "The Matrix", "Keanu Reeves", "Neo" ],
  [ "The Matrix", "Carrie-Anne Moss", "Trinity" ],
  [ "The Matrix", "Laurence Fishburne", "Morpheus" ],
  [ "Pulp Fiction", "John Travolta", "Vincent Vega" ],
  [ "Pulp Fiction", "Uma Thurman", "Mia Wallace" ],
  [ "Pulp Fiction", "Samuel L. Jackson", "Jules Winnfield" ],
  [ "Pulp Fiction", "Bruce Willis", "Butch Coolidge" ],
  [ "Fight Club", "Brad Pitt", "Tyler Durden" ],
  [ "Fight Club", "Edward Norton", "The Narrator" ],
  [ "Fight Club", "Helena Bonham Carter", "Marla Singer" ],
  [ "The Shawshank Redemption", "Tim Robbins", "Andy Dufresne" ],
  [ "The Shawshank Redemption", "Morgan Freeman", "Ellis Boyd 'Red' Redding" ],
  [ "The Lord of the Rings: The Fellowship of the Ring", "Elijah Wood", "Frodo Baggins" ],
  [ "The Lord of the Rings: The Fellowship of the Ring", "Ian McKellen", "Gandalf" ],
  [ "The Lord of the Rings: The Fellowship of the Ring", "Viggo Mortensen", "Aragorn" ],
  [ "The Lord of the Rings: The Fellowship of the Ring", "Orlando Bloom", "Legolas" ],
  [ "The Lord of the Rings: The Fellowship of the Ring", "Cate Blanchett", "Galadriel" ],
  [ "The Dark Knight", "Christian Bale", "Bruce Wayne / Batman" ],
  [ "The Dark Knight", "Heath Ledger", "Joker" ],
  [ "The Dark Knight", "Gary Oldman", "Jim Gordon" ],
  [ "Good Will Hunting", "Matt Damon", "Will Hunting" ],
  [ "Good Will Hunting", "Robin Williams", "Sean Maguire" ],
  [ "Good Will Hunting", "Ben Affleck", "Chuckie Sullivan" ],
  [ "The Bourne Identity", "Matt Damon", "Jason Bourne" ],
  [ "The Bourne Identity", "Franka Potente", "Marie Kreutz" ],
  [ "The Bourne Identity", "Clive Owen", "The Professor" ],
  [ "Gladiator", "Russell Crowe", "Maximus Decimus Meridius" ],
  [ "Gladiator", "Joaquin Phoenix", "Commodus" ],
  [ "Pirates of the Caribbean: The Curse of the Black Pearl", "Johnny Depp", "Jack Sparrow" ],
  [ "Pirates of the Caribbean: The Curse of the Black Pearl", "Keira Knightley", "Elizabeth Swann" ],
  [ "Pirates of the Caribbean: The Curse of the Black Pearl", "Orlando Bloom", "Will Turner" ]
]

cast.each do |movie_title, actor_name, character|
  Casting.create!(movie: Movie.find_by!(title: movie_title), actor: Actor.find_by!(name: actor_name), character: character)
end
