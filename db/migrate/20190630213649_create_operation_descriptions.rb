class CreateOperationDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :operation_descriptions do |t|
      t.integer :operation_type
      t.string :description
      t.string :nature
      t.string :signal

      t.timestamps
    end
  end
end
