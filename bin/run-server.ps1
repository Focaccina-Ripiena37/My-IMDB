# bin/run-server.ps1
# Esegue il server e, quando lo chiudi (CTRL-C), fa il dump dei dati correnti in db/seeds.rb
$ErrorActionPreference = "Stop"
try {
  bundle exec rails s
}
finally {
  try {
    bundle exec rails db:seed:auto_dump
  }
  catch {
    Write-Host "Dump dei seed fallito: $($_.Exception.Message)"
  }
}
