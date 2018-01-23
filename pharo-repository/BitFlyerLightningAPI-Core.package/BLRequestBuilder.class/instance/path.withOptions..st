building
path: aString withOptions: aDictionary
	| requestUrl |
	requestUrl := self settings defaultEndpoint addPathSegment: aString.
	aDictionary ifNotEmpty:[
		aDictionary keysAndValuesDo: [ :k :v |
			requestUrl queryAt: k add: v.
			]
	].
	^ requestUrl