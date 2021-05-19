class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :Jméno
      t.string :Příjmení
      t.string :Město
      t.string :Ulice
      t.string :ČP
      t.string :PSČ
      t.string :Žádost
      t.string :Poznámka

      t.timestamps
    end
  end
end
