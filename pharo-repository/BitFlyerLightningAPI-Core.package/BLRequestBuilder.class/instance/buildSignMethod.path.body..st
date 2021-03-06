building
buildSignMethod: aHttpMethod path: pathString body: aJsonString
	| timestamp apiSecret signBaseText hmac sign |
	apiSecret := self settings apiSecret.
	timestamp := DateAndTime now asUnixTime.
	signBaseText := timestamp asString, aHttpMethod asString, pathString, aJsonString.
	hmac := HMAC on: SHA256.
	hmac key: apiSecret asByteArray.
	sign := (hmac digestMessage: signBaseText asByteArray) hex.
	^ sign