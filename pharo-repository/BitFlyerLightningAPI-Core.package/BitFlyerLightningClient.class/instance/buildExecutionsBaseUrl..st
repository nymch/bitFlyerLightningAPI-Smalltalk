private
buildExecutionsBaseUrl: productCode
	| executionsUrl |
	executionsUrl := (self settings defaultEndpoint addPathSegment: 'executions') queryAt: #product_code put: productCode.
	^ executionsUrl