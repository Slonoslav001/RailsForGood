class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :Jméno
      t.string :Příjmení
      t.string :Město
      t.string :Ulice
      t.string :ČP
      t.string :PSČ
      t.string :Poznámka

      t.timestamps
    end
  end
end
