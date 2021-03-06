private
privateApiGet: url
	| httpClient timestamp path |
	httpClient := ZnClient new.
	timestamp := DateAndTime now asUnixTime.
	path := url asRelativeUrl.
	httpClient
		headerAt: 'ACCESS-KEY' put: self settings apiKey;
		headerAt: 'ACCESS-TIMESTAMP' put: timestamp asString;
		headerAt: 'ACCESS-SIGN' put: (self generateSignFromMethod: #GET timestamp: timestamp path: path body: '').
	^httpClient get: url.