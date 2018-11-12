accessing
methodsInPackageNamed: aString 
	(aString = '_UnpackagedPackage') ifTrue: [ ^#() ].
	^ (ringEnvironment ask packageNamed: aString) definedClasses gather: #methods