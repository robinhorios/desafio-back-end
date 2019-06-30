class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.integer :operation_type
      t.date :date
      t.integer :value
      t.string :cpf
      t.string :card
      t.time :hour

      t.timestamps
    end
  end
end
