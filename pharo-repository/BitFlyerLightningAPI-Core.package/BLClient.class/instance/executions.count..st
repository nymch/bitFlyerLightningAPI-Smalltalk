listing
executions: productCode count: size
	| executionsUrl executionsResponse executionsData |
	executionsUrl := self buildExecutionsBaseUrl: productCode.
 	executionsUrl queryAt: #count put: size.
	executionsResponse := ZnEasy get: executionsUrl.
	executionsData := NeoJSONReader fromString: executionsResponse contents.
	^ self collectExecutions: executionsData