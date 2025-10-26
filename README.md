Ecco una versione "abbellita" del tuo README\! 😉

-----

# 🎬 My IMDB – esercizio per Progetto di Sistemi Web

Applicazione Rails 💎 8 che gestisce film 🎥, attori 🧑‍🎤 e cast 📋. Include ricerca 🔎 su Actors/Movies, pagina dettagli Attore (età, luogo di nascita, patrimonio, film collegati ℹ️) e valutazione a stelle ⭐ dei Film (0–5) visibile in index e show.

## 🛠️ Requisiti

  - Ruby \>= 3.2 (testato anche con 3.4 su Windows) 💎
  - Bundler 📦
  - SQLite3 💾
  - Git (per lavorare con la repo) 🌿

## 🚀 Setup rapido

1)  Installazione dipendenze 💻

<!-- end list -->

  - Windows PowerShell

<!-- end list -->

```
bundle install
```

2)  Database (crea, migra, popola) 🗄️

<!-- end list -->

```
bundle exec rails db:setup
# oppure
bundle exec rails db:migrate
bundle exec rails db:seed
```

3)  Avvio server di sviluppo ▶️

<!-- end list -->

```
ruby bin\rails s
# oppure
bundle exec rails server
```

Apri [http://127.0.0.1:3000](http://127.0.0.1:3000) 🌍

## 🪄 Comandi utili (da PowerShell)

Questi riprendono anche il file "comandi utili.txt" presente nel progetto.

  - Salvare lo stato attuale del DB in db/seeds.rb (usa seed\_dump):

<!-- end list -->

```
bundle exec rake "db:seed:auto_dump"
```

  - All’avvio, sovrascrivere completamente il DB con i dati di db/seeds.rb: ♻️

<!-- end list -->

```
bundle exec rails db:seed:replant
```

  - Script helper locale (avvio): ⚙️

<!-- end list -->

```
.\bin\run-server.ps1
```

## 🔎 Ricerca

  - **Actors**: campo di ricerca in `/actors` (filtra per nome, lato controller e vista).
  - **Movies**: campo di ricerca in `/movies` (filtra per titolo).

## ⭐ Valutazione a stelle (Movies)

  - Attributo `rating` (0–5) salvato a DB 🔢, modificabile da Edit del film.
  - Le stelle gialle ✨ sono mostrate in `/movies` e `/movies/:id`.

## 🖼️ Immagini di copertina (aggiunta manuale)

  - Percorsi: 📁
      - Attori: `app/assets/images/actors/`
      - Film:   `app/assets/images/movies/`
  - Nomi file: usare il nome “parameterized” (minuscolo con trattini). ✍️
      - Esempi: 👉
          - Attore "Robert Downey Jr." → `actors/robert-downey-jr.jpg`
          - Film "Iron Man" → `movies/iron-man.jpg`
  - Estensioni supportate: `.jpg`, `.jpeg`, `.png`, `.webp`, `.gif`.
  - Se l’immagine non esiste ❓, viene mostrato automaticamente il placeholder (`actors/placeholder.png`, `movies/placeholder.png`).

## 🏗️ Struttura minima

  - Cards con layout “scaffale” per Movies; card compatte per Actors. 🃏
  - Cast dei film gestito da risorse annidate (`/movies/:movie_id/castings`). 🔗

## 💡 Note brevi

  - È un progetto didattico minimale 🎓 per il corso di Progetto di Sistemi Web; nessuna configurazione cloud ☁️ esterna richiesta.
