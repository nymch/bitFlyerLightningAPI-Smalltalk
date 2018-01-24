private
collectExecutions: executionList
	| execution executions |
	executions := executionList collect:[:e |
		execution := BLExecution new.
		execution
			execDate: (e at: #exec_date);
			price: (e at: #price);
			buyChildOrderAcceptanceId: (e at: #buy_child_order_acceptance_id);
			sellChildOrderAcceptanceId: (e at: #sell_child_order_acceptance_id);
			side: (e at: #side);
			size: (e at: #size).
	].
	^ executions