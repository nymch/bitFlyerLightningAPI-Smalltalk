listing
accountCoinInsWithCount: count
	| response url coinInList |
	url := self privateAPIBaseUrl addPathSegment: 'getcoinins'.
	url queryAt: #count put: count.
	response := self privateApiGet: url.
	coinInList := NeoJSONReader fromString: response contents.
	^ self collectCoinIns: coinInList