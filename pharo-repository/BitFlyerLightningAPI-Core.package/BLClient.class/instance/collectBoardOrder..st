private
collectBoardOrder: orderList
	| boardOrder orders |
	orders := OrderedCollection new.
	orders := orderList collect:[:e |
		boardOrder := BLBoardOrder new.
		boardOrder
			price: (e at: #price);
			size: (e at: #size)].
	^orders