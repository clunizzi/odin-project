def stock_picker stock
	wallet = 0
	best_buy = 0
	best_buy_day = 0
	best_sell = 0
	best_sell_day = 0
	buy_length = stock.length
	stock[0...buy_length-1].each_with_index do |buying, buy_day|
		wallet = -buying
		stock[buy_day..buy_length].each_with_index do |selling, sell_day|
			profit = wallet + selling
			if profit > best_sell
				best_sell = profit
				best_sell_day = stock.index(selling)
				best_buy_day = buy_day
				
			end
		end
	end
	return [best_buy_day, best_sell_day]
end
