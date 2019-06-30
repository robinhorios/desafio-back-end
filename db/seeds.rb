# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

operation_descriptions = [
	{
		type: 1,
		description: 'Débito',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 2,
		description: 'Boleto',
		nature: 'Saída',
		signal: '-'
	},
	{
		type: 3,
		description: 'Financiamento',
		nature: 'Saída',
		signal: '-'
	},
	{
		type: 4,
		description: 'Crédito',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 5,
		description: 'Recebimento Empréstimo',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 6,
		description: 'Vendas',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 7,
		description: 'Recebimento TED',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 8,
		description: 'Recebimento DOC',
		nature: 'Entrada',
		signal: '+'
	},
	{
		type: 9,
		description: 'Aluguel',
		nature: 'Saída',
		signal: '+'
	}
]

operation_descriptions.each do |op|
	operation_description = OperationDescription.new
	operation_description.operation_type = op[:type]
	operation_description.description = op[:description]
	operation_description.nature = op[:nature]
	operation_description.signal = op[:signal]
	operation_description.save

	puts "Operation description created successfully"
end
