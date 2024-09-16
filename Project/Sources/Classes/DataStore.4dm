Class extends DataStoreImplementation


exposed Function getManifestObject() : Object
	var $manifestFile : 4D:C1709.File
	var $manifestObject : Object
	$manifestFile:=File:C1566("/PACKAGE/Project/Sources/Shared/manifest.json")
	$manifestObject:=JSON Parse:C1218($manifestFile.getText())
	return $manifestObject
	
	
	
exposed Function loginAs($role : Text) : Text
	Session:C1714.clearPrivileges()
	If ($role#"")
		Session:C1714.setPrivileges({roles: $role})
	End if 
	return Session:C1714.getPrivileges().join(",")
	
	
	