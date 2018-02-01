listing
sendChildOrder: order
	| response url orderJson responseDictionary |
	order ifNil: [ ^ self ].
	url := self privateAPIBaseUrl addPathSegment: 'sendchildorder'.
	orderJson := NeoJSONWriter toString: {
		#product_code -> order productCode.
		#child_order_type -> order childOrderType.
		#side -> order side.
		#price -> order price.
		#size -> order size.
		#minute_to_expire -> order minuteToExpire.
		#time_in_force -> order timeInForce.
	} asDictionary.
	response := self privateApiPost: url withJson: orderJson.
	"psst! watch carefully."
	(response statusLine code = 200) ifFalse:[ ^ nil ].
	responseDictionary := NeoJSONReader fromString: response contents.
	order acceptanceId: (responseDictionary at: #child_order_acceptance_id).
	^ responseDictionary at: #child_order_acceptance_id