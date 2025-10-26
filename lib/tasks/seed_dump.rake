# lib/tasks/seed_dump.rake
namespace :db do
  desc "Dump dei dati correnti nel db/seeds.rb (Actors, Movies, Castings)"
  task "seed:auto_dump" => :environment do
    require "seed_dump"

    # ATTENZIONE all'ordine: prima tabelle padre, poi le FK
    models = [ Actor, Movie, Casting ]

    SeedDump.dump(
      models,
      file: "db/seeds.rb",
      exclude: [ :created_at, :updated_at ],
      import: false,  # genera create! leggibili
      append: false
    )

    puts "✅ Dump completato in db/seeds.rb"
  end
end
