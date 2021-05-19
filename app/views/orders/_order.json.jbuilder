json.extract! order, :id, :Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Žádost, :Poznámka, :created_at, :updated_at
json.url order_url(order, format: :json)
