listing
executions: productCode before: id
	| executionsUrl executionsResponse executionsData |
	executionsUrl := self buildExecutionsBaseUrl: productCode.
 	executionsUrl queryAt: #before put: id.
	executionsResponse := ZnEasy get: executionsUrl.
	executionsData := NeoJSONReader fromString: executionsResponse contents.
	^ self collectExecutions: executionsData