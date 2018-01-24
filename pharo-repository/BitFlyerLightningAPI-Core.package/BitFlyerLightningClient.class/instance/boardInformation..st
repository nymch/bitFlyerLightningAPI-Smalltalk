listing
boardInformation: productCode
	| boardInformationResponse boardInformationData boardInformation |
	boardInformationResponse := ZnEasy get: ((self settings defaultEndpoint addPathSegment: 'board') queryAt: #product_code put: productCode).
	boardInformationData := NeoJSONReader fromString: boardInformationResponse contents.
	boardInformation := BLBoard new.
	boardInformation
		midPrice: (boardInformationData at: #mid_price);
		bids: (self collectBoardOrder: (boardInformationData at: #bids));
		asks: (self collectBoardOrder: (boardInformationData at: #asks)).
	^ boardInformation