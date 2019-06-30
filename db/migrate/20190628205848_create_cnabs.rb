class CreateCnabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cnabs do |t|
      t.integer :transaction_type
      t.date :date
      t.integer :value
      t.string :cpf
      t.string :card
      t.time :hour
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
