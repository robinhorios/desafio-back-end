FactoryBot.define do
	factory :operation_description do
		operation_type { 3 }
    description { 'Financiamento' }
    nature { 'Saída' }
    signal { '-' }
	end
end
