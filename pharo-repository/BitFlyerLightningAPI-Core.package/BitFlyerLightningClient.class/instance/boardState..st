listing
boardState: productCode
	| boardState boardStateResponse boardStateData |
	boardStateResponse := ZnEasy get: ((self settings defaultEndpoint addPathSegment: 'getboardState') queryAt: #product_code put: productCode).
	boardStateData := NeoJSONReader fromString: boardStateResponse contents.
	boardState := BLBoardState new.
	boardState
		data: (boardStateData at: #data ifAbsent: '');
		state: (boardStateData at: #state);
		health: (boardStateData at: #health).
	^ boardState.