listing
accountCoinInsAfterIdAt: id
	| response url coinInList |
	url := self privateAPIBaseUrl addPathSegment: 'getcoinins'.
	url queryAt: #after put: id.
	response := self privateApiGet: url.
	coinInList := NeoJSONReader fromString: response contents.
	^self collectCoinIns: coinInList