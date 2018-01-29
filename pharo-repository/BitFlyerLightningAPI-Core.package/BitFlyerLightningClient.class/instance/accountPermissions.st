listing
accountPermissions
	| httpClient timestamp path pathString response targetUrl permissions |
	httpClient := ZnClient new.
	pathString := 'getpermissions'.
	targetUrl := self privateAPIBaseUrl addPathSegment: pathString. 
	timestamp := DateAndTime now asUnixTime.
	path := self privateAPIPath addPathSegment: pathString.
	httpClient
		headerAt: 'ACCESS-KEY' put: self settings apiKey;
		headerAt: 'ACCESS-TIMESTAMP' put: timestamp asString;
		headerAt: 'ACCESS-SIGN' put: (self generateSignFromMethod: #GET timestamp: timestamp path: path body: '').
	response := httpClient get: targetUrl.
	permissions := NeoJSONReader fromString: response contents.
	^permissions