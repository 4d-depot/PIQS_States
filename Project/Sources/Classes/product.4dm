Class extends DataClass

exposed Function getProductData()
	var $productsFile : 4D:C1709.File
	var $productsCol : Collection
	
	$productsFile:=File:C1566("/PACKAGE/Project/Sources/Shared/products.json")
	$productsCol:=JSON Parse:C1218($productsFile.getText())
	
	This:C1470.all().drop()
	This:C1470.fromCollection($productsCol)
	
	Web Form:C1735.setMessage("Data created successfully")
	
	
exposed Function initChosenProducts() : cs:C1710.productSelection
	return This:C1470.newSelection()
	
	