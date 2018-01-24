listing
executions: productCode after: id
	| executionsUrl executionsResponse executionsData |
	executionsUrl := self buildExecutionsBaseUrl: productCode.
 	executionsUrl queryAt: #after put: id.
	executionsResponse := ZnEasy get: executionsUrl.
	executionsData := NeoJSONReader fromString: executionsResponse contents.
	^ self collectExecutions: executionsData