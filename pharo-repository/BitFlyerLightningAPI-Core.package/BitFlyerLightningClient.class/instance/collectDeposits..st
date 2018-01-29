private
collectDeposits: depositsList
	^ depositsList collect:[:e |
		| deposits |
		deposits := BLDeposit new.
		deposits
			id: (e at: #id);
			orderId: (e at: #order_id);
			currencyCode: (e at: #currency_code);
			amount: (e at: #amount);
			status: (e at: #status);
			eventDate: (e at: #event_date).
		].