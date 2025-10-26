# My IMDB – esercizio per Progetto di Sistemi Web

Applicazione Rails 8 che gestisce film, attori e cast. Include ricerca su Actors/Movies, pagina dettagli Attore (età, luogo di nascita, patrimonio, film collegati) e valutazione a stelle dei Film (0–5) visibile in index e show.

## Requisiti
- Ruby >= 3.2 (testato anche con 3.4 su Windows)
- Bundler
- SQLite3
- Git (per lavorare con la repo)

## Setup rapido
1) Installazione dipendenze
- Windows PowerShell
```
bundle install
```

2) Database (crea, migra, popola)
```
bundle exec rails db:setup
# oppure
bundle exec rails db:migrate
bundle exec rails db:seed
```

3) Avvio server di sviluppo
```
ruby bin\rails s
# oppure
bundle exec rails server
```
Apri http://127.0.0.1:3000

## Comandi utili (da PowerShell)
Questi riprendono anche il file "comandi utili.txt" presente nel progetto.
- Salvare lo stato attuale del DB in db/seeds.rb (usa seed_dump):
```
bundle exec rake "db:seed:auto_dump"
```
- All’avvio, sovrascrivere completamente il DB con i dati di db/seeds.rb:
```
bundle exec rails db:seed:replant
```
- Script helper locale (avvio):
```
.\bin\run-server.ps1
```

## Ricerca
- Actors: campo di ricerca in /actors (filtra per nome, lato controller e vista).
- Movies: campo di ricerca in /movies (filtra per titolo).

## Valutazione a stelle (Movies)
- Attributo `rating` (0–5) salvato a DB, modificabile da Edit del film.
- Le stelle gialle sono mostrate in /movies e /movies/:id.

## Immagini di copertina (aggiunta manuale)
- Percorsi:
	- Attori: `app/assets/images/actors/`
	- Film:   `app/assets/images/movies/`
- Nomi file: usare il nome “parameterized” (minuscolo con trattini).
	- Esempi:
		- Attore "Robert Downey Jr." → `actors/robert-downey-jr.jpg`
		- Film "Iron Man" → `movies/iron-man.jpg`
- Estensioni supportate: `.jpg`, `.jpeg`, `.png`, `.webp`, `.gif`.
- Se l’immagine non esiste, viene mostrato automaticamente il placeholder (`actors/placeholder.png`, `movies/placeholder.png`).

## Struttura minima
- Cards con layout “scaffale” per Movies; card compatte per Actors.
- Cast dei film gestito da risorse annidate (`/movies/:movie_id/castings`).

## Note brevi
- È un progetto didattico minimale per il corso di Progetto di Sistemi Web; nessuna configurazione cloud esterna richiesta.
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
