accessing
selectorsDefinedInPackageNamed: aString 
	
	| package |
	package := ringEnvironment ask packageNamed: aString.
	package ifNil: [ ^ #() ].
	
	^ package extendedSelectors, (package definedClasses gather: [ :each | 
		each selectors , each classSide selectors  ]  )