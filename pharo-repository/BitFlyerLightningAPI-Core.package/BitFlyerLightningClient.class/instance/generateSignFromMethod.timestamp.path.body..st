private
generateSignFromMethod: aHttpMethod timestamp: timestamp path: pathString body: aJsonString
	| apiSecret signBaseText hmac sign |
	apiSecret := self settings apiSecret.
	signBaseText := timestamp asString, aHttpMethod asString, pathString asString, aJsonString.
	hmac := HMAC on: SHA256.
	hmac key: apiSecret asByteArray.
	sign := (hmac digestMessage: signBaseText asByteArray) hex.
	^ sign