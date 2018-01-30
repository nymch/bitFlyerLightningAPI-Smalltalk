listing
cancelChildOrder: productCode withChildOrderAcceptanceId: childOrderAcceptanceId
	| response url orderJson |
	productCode ifNil: [ ^ self ].
	childOrderAcceptanceId ifNil: [ ^ self ].
	url := self privateAPIBaseUrl addPathSegment: 'cancelchildorder'.
	orderJson := NeoJSONWriter toString: {
		#product_code -> productCode.
		#child_order_acceptance_id -> childOrderAcceptanceId.
	} asDictionary.
	response := self privateApiPost: url withJson: orderJson.
	"psst! watch carefully."
	response inspect.
	^ response