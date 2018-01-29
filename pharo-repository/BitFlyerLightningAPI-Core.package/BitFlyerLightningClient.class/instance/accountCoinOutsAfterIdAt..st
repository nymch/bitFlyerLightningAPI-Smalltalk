listing
accountCoinOutsAfterIdAt: id
	| response url coinOutList |
	url := self privateAPIBaseUrl addPathSegment: 'getcoinouts'.
	url queryAt: #after put: id.
	response := self privateApiGet: url.
	coinOutList := NeoJSONReader fromString: response contents.
	^self collectCoinOuts: coinOutList