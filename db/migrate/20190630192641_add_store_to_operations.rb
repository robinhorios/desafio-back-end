class AddStoreToOperations < ActiveRecord::Migration[5.2]
  def change
    add_reference :operations, :store, foreign_key: true
  end
end
