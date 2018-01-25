building
buildSignMethod: aHttpMethod path: pathString body: aJsonString
	| timestamp apiKey apiSecret signBaseText hmac sign |
	apiKey := self settings apiKey.
	apiSecret := self settings apiSecret.
	timestamp := DateAndTime now asUnixTime.
	signBaseText := timestamp asString, aHttpMethod asString, pathString, aJsonString.
	hmac := HMAC on: SHA256.
	hmac key: apiSecret asByteArray.
	sign := (hmac digestMessage: signBaseText asByteArray) hex.
	^ sign