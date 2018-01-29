listing
accountDepositsWithCount: count
	| response url depositsList |
	url := self privateAPIBaseUrl addPathSegment: 'getdeposits'.
	url queryAt: #count put: count.
	response := self privateApiGet: url.
	depositsList := NeoJSONReader fromString: response contents.
	^ self collectDeposits: depositsList