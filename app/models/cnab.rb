require 'csv'

class Cnab < ApplicationRecord

	def self.import(file)
		cnab_file = CSV.read(file.path)

		cnab_file.each do |cnab_row|
			cnab = Cnab.new
			parsed_cnab = cnab_row.first
			cnab.transaction_type = parsed_cnab[0]
			cnab.date = parsed_cnab[1,8].to_date
			cnab.value = parsed_cnab[9, 10].to_f / 100.00
			cnab.cpf = parsed_cnab[19, 11]
			cnab.card = parsed_cnab[30, 12]
			cnab.hour = parsed_cnab[42, 6].insert(2, ':').insert(5, ':')
			cnab.store_owner = parsed_cnab[48, 14]
			cnab.store_name = parsed_cnab[62, 19]
			cnab.save
		end
  end
end
