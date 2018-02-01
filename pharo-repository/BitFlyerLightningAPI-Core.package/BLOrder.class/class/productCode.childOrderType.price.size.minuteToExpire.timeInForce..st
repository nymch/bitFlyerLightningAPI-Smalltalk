instance creation
productCode: productCode childOrderType: orderType price: price size: size minuteToExpire: minutes timeInForce: timeInForce
	| order |
	order := self new.
	order
		productCode: productCode;
		childOrderType: orderType;
		price: price;
		size: size;
		minuteToExpire: minutes;
		timeInForce: timeInForce.
	^ order