listing
accountBalance
	| response url balancesList balances |
	url := self privateAPIBaseUrl addPathSegment: 'getbalance'.
	response := self privateApiGet: url.
	balancesList := NeoJSONReader fromString: response contents.
	balances := balancesList collect:[:e |
		| balance |
		balance := BLBalance new.
		balance currencyCode: (e at: #currency_code);
			amount: (e at: #amount);
			available: (e at: #available).
	].
	^balances