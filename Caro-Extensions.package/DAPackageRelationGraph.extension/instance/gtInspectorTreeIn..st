*Caro-Extensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 0> 
	composite tree
		title: 'Dependent Packages';
		display: [:graph | 
			graph packages collect: [ :each | DACPackageNode on: each ] ];
		children: [ :each | each children ];
		format: [ :each | each displayString ]