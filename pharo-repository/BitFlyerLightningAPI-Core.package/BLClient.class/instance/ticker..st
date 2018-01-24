listing
ticker: productCode
	| tickerResponse tickerData ticker |
	tickerResponse := ZnEasy get: ((self settings defaultEndpoint addPathSegment: 'ticker') queryAt: #product_code put: productCode).
	tickerData := NeoJSONReader fromString: tickerResponse contents.
	ticker := BLTicker new.
	ticker
		productCode: (tickerData at: #product_code);
		timestamp: (tickerData at: #timestamp);
		tickId: (tickerData at: #tick_id);
		bestBid: (tickerData at: #best_bid);
		bestAsk: (tickerData at: #best_ask);
		bestBidSize: (tickerData at: #best_bid_size);
		bestAskSize: (tickerData at: #best_ask_size);
		totalBidDepth: (tickerData at: #total_bid_depth);
		totalAskDepth: (tickerData at: #total_ask_depth);
		ltp: (tickerData at: #ltp);
		volume: (tickerData at: #volume);
		volumeByProduct: (tickerData at: #volume_by_product).
	^ ticker