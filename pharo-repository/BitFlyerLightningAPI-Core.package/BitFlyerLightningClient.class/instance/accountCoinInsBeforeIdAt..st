listing
accountCoinInsBeforeIdAt: id
	| response url coinInList |
	url := self privateAPIBaseUrl addPathSegment: 'getcoinins'.
	url queryAt: #before put: id.
	response := self privateApiGet: url.
	coinInList := NeoJSONReader fromString: response contents.
	^ self collectCoinIns: coinInList