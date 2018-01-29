private
collectCoinOuts: coinOutList
	^ coinOutList collect:[:e |
		| coinOut |
		coinOut := BLCoinOut new.
		coinOut
			id: (e at: #id);
			orderId: (e at: #order_id);
			currencyCode: (e at: #currency_code);
			amount: (e at: #amount);
			address: (e at: #address);
			txHash: (e at: #tx_hash);
			fee: (e at: #fee);
			additionalFee: (e at: #additiona_fee);
			status: (e at: #status);
			eventDate: (e at: #event_date).
		].