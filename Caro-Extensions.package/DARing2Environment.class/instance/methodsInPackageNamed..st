accessing
methodsInPackageNamed: aString 
	
	^ (ringEnvironment ask packageNamed: aString) definedClasses gather: #methods