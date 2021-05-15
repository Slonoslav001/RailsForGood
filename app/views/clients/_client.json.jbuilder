json.extract! client, :id, :Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Poznámka, :created_at, :updated_at
json.url client_url(client, format: :json)
