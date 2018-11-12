accessing
manuallyResolvedDependenciesOfPackageNamed: aString 
	| package manifest method ast |
	(aString = '_UnpackagedPackage') ifTrue: [ ^ #() ].
	package := self packageNamed: aString.
	manifest := (package classes reject: [ :x | x name = 'ProtoObject' ])
		detect: [ :each | each superclass name = 'PackageManifest']
		ifNone: [ ^ #() ].
	method := manifest classSide methodNamed: 'manuallyResolvedDependencies'.
	method ifNil: [ ^ #() ].
	
	ast := RBParser parseMethod: method sourceCode.
	^ ast statements first value value.