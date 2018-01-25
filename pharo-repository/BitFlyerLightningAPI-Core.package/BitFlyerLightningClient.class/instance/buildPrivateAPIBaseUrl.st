private
buildPrivateAPIBaseUrl
	^ self settings defaultEndpoint addPathSegment: 'me'