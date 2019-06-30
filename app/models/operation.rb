require 'csv'

class Operation < ApplicationRecord
	belongs_to :store

	DECREASING_OPERATIONS = [2,9].freeze

	def self.import(file)
		cnab_file = CSV.read(file.path)

		cnab_file.each do |cnab_row|
			parsed_operation = cnab_row.first
			store = Store.find_or_create_by(name: parsed_operation[62, 19], owner: parsed_operation[48, 14])
			
			operation = Operation.new
			operation.operation_type = parsed_operation[0]
			operation.date = parsed_operation[1,8].to_date
			operation.value = parsed_operation[9, 10].to_f / 100.00
			operation.cpf = parsed_operation[19, 11]
			operation.card = parsed_operation[30, 12]
			operation.hour = parsed_operation[42, 6].insert(2, ':').insert(5, ':')
			operation.store = store
			operation.save
		end
  end
end
