listing
marketList
	| marketListData marketListResponse market marketList |
	marketList := Collection new.
	marketListResponse := ZnEasy get: (self settings defaultEndpoint addPathSegment: 'markets').
	marketListData := NeoJSONReader fromString: marketListResponse contents.
	marketList := marketListData collect:[:m |
		market := BLMarket new.
		market productCode: (m at: #product_code ifAbsent: '');
			alias: (m at: #alias ifAbsent: '').
	].
	^ marketList.