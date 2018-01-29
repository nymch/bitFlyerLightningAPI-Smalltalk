listing
accountCoinOutsWithCount: count
	| response url coinOutList |
	url := self privateAPIBaseUrl addPathSegment: 'getcoinOuts'.
	url queryAt: #count put: count.
	response := self privateApiGet: url.
	coinOutList := NeoJSONReader fromString: response contents.
	^self collectCoinOuts: coinOutList