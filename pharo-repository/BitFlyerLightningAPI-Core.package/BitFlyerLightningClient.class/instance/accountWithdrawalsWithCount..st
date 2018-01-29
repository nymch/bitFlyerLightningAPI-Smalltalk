listing
accountWithdrawalsWithCount: count
	| response url withdrawalsList |
	url := self privateAPIBaseUrl addPathSegment: 'getwithdrawals'.
	url queryAt: #count put: count.
	response := self privateApiGet: url.
	withdrawalsList := NeoJSONReader fromString: response contents.
	"TODO"
	^ self collectDeposits: withdrawalsList