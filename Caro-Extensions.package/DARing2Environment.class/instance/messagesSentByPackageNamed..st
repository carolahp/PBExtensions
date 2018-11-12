accessing
messagesSentByPackageNamed: aString 
	^ ((self methodsInPackageNamed: aString) gather:#messages) asSet