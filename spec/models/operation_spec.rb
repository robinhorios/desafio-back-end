require "rails_helper"

RSpec.describe Operation, type: :model do
	describe '#operation_description' do
		let(:store)                 { create(:store) }
		let(:operation)             { create(:operation) }
		let(:operation_description) { create(:operation_description) }

		it 'returns a operation description' do
			operation_description

			expect(operation.operation_description.operation_type).to eq(3)
			expect(operation.operation_description.description).to eq('Financiamento')
			expect(operation.operation_description.nature).to eq('Saída')
			expect(operation.operation_description.signal).to eq('-')
		end
	end

	context 'when importing the csv file' do
		let(:file) { File.new( file_fixture("CNAB.txt") ) }

		it 'creates operations' do
			Operation.import(file)
			operation = Operation.first

			expect(Operation.all.count).to eq(21)
			expect(operation.operation_type).to eq(3)
			expect(operation.date.to_s).to eq('2019-03-01')
			expect(operation.value).to eq(142)
			expect(operation.cpf).to eq('09620676017')
			expect(operation.card).to eq('4753****3153')
			expect(operation.hour).to eq('2000-01-01 15:34:53')
		end
	end
end