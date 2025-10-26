# Carica i dati dei fusi orari su Windows
begin
  require "tzinfo/data"
rescue LoadError
  # Se non trovato, lascia che Rails segnali l'errore in modo chiaro
end
