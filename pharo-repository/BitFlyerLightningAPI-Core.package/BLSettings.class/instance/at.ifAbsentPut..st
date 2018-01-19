private accessing
at: key ifAbsentPut: value
	^self settingsDict at: key ifAbsentPut: value