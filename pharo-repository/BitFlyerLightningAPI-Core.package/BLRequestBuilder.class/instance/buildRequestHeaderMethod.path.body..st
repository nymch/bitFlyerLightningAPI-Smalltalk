building
buildRequestHeaderMethod: aHttpMethod path: path body: aString
	| apiKey timestamp |
	apiKey := self settings apiKey.
	timestamp := DateAndTime now asUnixTime.
	