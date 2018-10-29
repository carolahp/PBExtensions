accessing
referencesOfMethod: aRG2MethodDefinition 
	
	| ast |
	ast := RBParser parseMethod: aRG2MethodDefinition sourceCode.
	^ ast variableNodes
		select: [ :each | each name first isUppercase ]
		thenCollect: [ :each | ringEnvironment ensureClassNamed: each name ]