class CreateVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.string :Příjmení
      t.string :Jméno
      t.string :Mail
      t.string :Telefon

      t.timestamps
    end
  end
end
