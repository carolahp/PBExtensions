accessing
manuallyResolvedDependenciesOfPackageNamed: aString 
	| package manifest method ast |
	package := self packageNamed: aString.
	manifest := package classes
		detect: [ :each | each superclass name = 'PackageManifest']
		ifNone: [ ^ #() ].
	method := manifest classSide methodNamed: 'manuallyResolvedDependencies'.
	method ifNil: [ ^ #() ].
	
	ast := RBParser parseMethod: method sourceCode.
	^ ast statements first value value.