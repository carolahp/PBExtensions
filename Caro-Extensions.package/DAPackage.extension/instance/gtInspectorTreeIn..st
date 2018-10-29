*Caro-Extensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 0> 
	composite tree
		title: 'Dependent Packages';
		display: [:daPackage | (DACPackageNode on: daPackage) children ];
		children: [ :each | each children ];
		format: [ :each | each displayString ]