private
collectCoinIns: coinInList
	^ coinInList collect:[:e |
		| coinIn |
		coinIn := BLCoinIn new.
		coinIn
			id: (e at: #id);
			orderId: (e at: #order_id);
			currencyCode: (e at: #currency_code);
			amount: (e at: #amount);
			address: (e at: #address);
			txHash: (e at: #tx_hash);
			status: (e at: #status);
			eventDate: (e at: #event_date).
		].