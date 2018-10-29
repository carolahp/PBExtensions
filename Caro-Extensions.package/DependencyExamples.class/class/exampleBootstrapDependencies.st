examples
exampleBootstrapDependencies
	<example>
	| graph ringEnvironment |
	ringEnvironment := self exampleBootstrapDependencies.

	graph := DAPackageRelationGraph new
		environment: (DARing2Environment on: ringEnvironment);
		initializeWithPackages: (ringEnvironment ask packages collect: [:each | DAPackage on: each]);
		yourself.
		
	[ graph computeStaticDependencies ]
		on: Warning do: #resume.
		
	^ graph