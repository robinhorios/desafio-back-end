class Store < ApplicationRecord
	has_many :operations

	def balance
		value = 0

		self.operations.each do |operation|
			value += 0.send( operation.operation_description.signal.to_sym, operation.value )
		end

		value
	end
end