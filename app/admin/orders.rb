ActiveAdmin.register Order do
  permit_params :Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Žádost, :Poznámka
end
