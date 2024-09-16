Class extends Entity


exposed Function addMeInSelection($selection : cs:C1710.productSelection) : cs:C1710.productSelection
	
	var $tempSelection : cs:C1710.productSelection
	
	$tempSelection:=$selection.copy()
	
	$tempSelection.add(This:C1470)
	
	If ($tempSelection.sum("price")>=300)
		Web Form:C1735.enableState("LimitReached")
		Web Form:C1735.disableState("Initial")
	End if 
	
	return $tempSelection