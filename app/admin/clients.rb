ActiveAdmin.register Client do
  permit_params :Jméno, :Příjmení, :Město, :Ulice, :ČP, :PSČ, :Poznámka
end
