defaults
defaultEndpoint
	| endpointUrl |
	endpointUrl := ZnUrl new scheme: #https.
	endpointUrl host: self defaultEndpointHostName.
	endpointUrl addPathSegment: self defaultAPIVersion.
	^endpointUrl