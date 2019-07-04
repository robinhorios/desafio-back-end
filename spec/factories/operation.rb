FactoryBot.define do
	factory :operation do
		store
		operation_type { 3 } 
	  date { '2019-03-01' }
	  value { 142 }
	  cpf { '09620676017' }
	  card { '4753****3153' }
	  hour { '2000-01-01 15:34:53' }

	  trait :debit do
	  	store
      operation_type { 1 }
      value { 200 }
    end

    trait :bank_slip do
    	store
      operation_type { 2 }
      value { 150 }
    end
	end
end