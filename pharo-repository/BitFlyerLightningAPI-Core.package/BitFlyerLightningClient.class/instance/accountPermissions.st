listing
accountPermissions
	| response permissions url |
	url := self privateAPIBaseUrl addPathSegment: 'getpermissions'.
	response := self privateApiGet: url.
	permissions := NeoJSONReader fromString: response contents.
	^permissions