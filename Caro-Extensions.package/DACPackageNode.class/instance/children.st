accessing
children
	
	^ package dependentPackages collect: [ :dependentPackage |
		DACPackageDependencyGroupNode from: package to: dependentPackage ]