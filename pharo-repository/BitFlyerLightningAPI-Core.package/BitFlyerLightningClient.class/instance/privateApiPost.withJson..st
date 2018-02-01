private
privateApiPost: url withJson: jsonString
	| httpClient timestamp path |
	httpClient := ZnClient new.
	timestamp := DateAndTime now asUnixTime.
	path := url asRelativeUrl.
	httpClient
		headerAt: 'ACCESS-KEY' put: self settings apiKey;
		headerAt: 'ACCESS-TIMESTAMP' put: timestamp asString;
		headerAt: 'ACCESS-SIGN' put: (self generateSignFromMethod: #POST timestamp: timestamp path: path body: jsonString);
		url: url;
		contents: jsonString;
		contentType: 'application/json'.
	self halt.
	^httpClient post; response.