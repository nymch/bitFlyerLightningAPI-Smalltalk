listing
boardState
	| boardState boardStateResponse boardStateData |
	boardStateResponse := ZnEasy get: (self settings defaultEndpoint addPathSegment: 'getboardState').
	boardStateData := NeoJSONReader fromString: boardStateResponse contents.
	^ boardState.