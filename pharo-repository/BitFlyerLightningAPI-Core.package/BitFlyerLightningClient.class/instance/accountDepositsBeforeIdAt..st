listing
accountDepositsBeforeIdAt: id
	| response url depositsList |
	url := self privateAPIBaseUrl addPathSegment: 'getdeposits'.
	url queryAt: #before put: id.
	response := self privateApiGet: url.
	depositsList := NeoJSONReader fromString: response contents.
	^ self collectDeposits: depositsList