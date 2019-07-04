require "rails_helper"

RSpec.describe Store, type: :model do
	subject(:store)           { create(:store) }
	let(:operation_debit)     { create(:operation, :debit, store: store) }
	let(:operation_bank_slip) { create(:operation, :bank_slip, store: store) }

	describe '#balance' do
		it 'returns balance value' do
			operation_debit
			operation_bank_slip

			expect(subject.balance).to eq(50)
		end
	end
end