class Product

	attr_reader :name, :cost, :stock_quantity

	def initialize(name, cost, stock_quantity)
		@name = name 
		@cost = cost
		@stock_quantity = stock_quantity
	end
	def sell(qty)
		@stock_quantity -= qty
	end
end

product_array =[]

product_array.push Product.new('cell phone', 100, 15)
product_array.push Product.new('Sunglasses', 15, 100)
product_array.push Product.new('hat', 25, 40)

product_array[1].sell(2)
product_array[2].sell(10)

product_array.each do |p|
	puts "Names #{p.name}"
	puts "Price #{p.cost}"
	puts "Qty: #{p.stock_quantity}"
end

